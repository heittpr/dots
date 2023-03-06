import json
import os

### basic

c.downloads.location.directory = '/home/heitor/'
c.content.pdfjs = True
c.content.javascript.can_access_clipboard = True
c.content.notifications.enabled = False
c.content.blocking.method = 'both'
c.editor.command = ['foot', '-e', 'nvim', '{file}']
c.content.autoplay = False
c.content.geolocation = False

c.url.default_page= '/home/heitor/.config/qutebrowser/default.html'
c.url.start_pages = [c.url.default_page]
c.url.searchengines = {
  'DEFAULT': 'https://www.google.com/search?q={}',
  'g': 'https://www.google.com/search?q={}',
  'vw': 'https://docs.voidlinux.org/?search={}',
  'wk': 'https://wikipedia.org/w/index.php?search={}',
  'yt': 'https://www.youtube.com/results?search_query={}',
  'so': 'https://stackoverflow.com/search?q={}',
  'cp': 'https://cp-algorithms.com/?q={}',
  'pg': 'http://wcipeg.com/wiki/index.php?search={}',
  'mw': 'https://mathworld.wolfram.com/search/?query={}',
  'wa': 'https://www.wolframalpha.com/input/?i={}',
  'libgen': 'https://libgen.is/search.php?req={}',
  'sci': 'https://sci-hub.ru/{}',
  'oeis': 'https://oeis.org/search?q={}',
  'lens': 'https://lens.google.com/uploadbyurl?url={}',
  'translate': 'https://translate.google.com/?sl=auto&tl=en&text={}'
  # 'translate-url': 'https://translate.google.com/?sl=auto&tl=en&u={}'
}

c.tabs.title.alignment = 'center'
c.fonts.default_family = "M+ 1m"
c.fonts.web.family.standard = "Noto Sans"
c.fonts.web.family.sans_serif = "Noto Sans"
c.fonts.web.family.serif = "Noto Serif"
c.fonts.web.family.fantasy = "Impact"
c.fonts.web.family.fixed = "Consolas"
c.colors.webpage.preferred_color_scheme = 'dark'
# c.colors.webpage.darkmode.enabled = True
# c.colors.webpage.darkmode.policy.images = 'never'

# c.qt.force_software_rendering = "qt-quick"
# c.qt.args += [
#  'ignore-gpu-blacklist',
#  'enable-gpu-rasterization',
#  'enable-native-gpu-memory-buffers',
#  'num-raster-threads=4'
# ]

### shortcuts / aliases

config.bind(',M', 'hint links spawn mpv {hint-url}')
config.bind(',m', 'spawn mpv {url}')
config.bind('ab', 'config-cycle -p content.blocking.enabled')
config.bind('xs', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle tabs.show always never;; config-cycle statusbar.show always never')

# bypass paywalls
c.aliases['12ft'] = "open https://12ft.io/proxy?q={url}"
c.aliases['cache'] = "open https://www.google.com/search?q=cache:{url}"

### password manager

pass_args = ' -p /home/heitor/.local/share/pass --username-target secret --username-pattern "(?:username|login): (.+)"'
config.bind('zl', 'spawn --userscript qute-pass' + pass_args)
config.bind('zu', 'spawn --userscript qute-pass --username-only' + pass_args)
config.bind('zp', 'spawn --userscript qute-pass --password-only' + pass_args)
config.bind('zo', 'spawn --userscript qute-pass --otp-only' + pass_args)

### theme

# load wal colors
with open(os.environ['XDG_CACHE_HOME'] + '/wal/colors.json') as f:
    wal = json.load(f)

bg = wal['special']['background']
fg = wal['special']['foreground']
colors = list(wal['colors'].values())

# tabs
c.colors.tabs.bar.bg            = \
c.colors.tabs.even.bg           = \
c.colors.tabs.odd.bg            = \
c.colors.tabs.selected.even.bg  = \
c.colors.tabs.selected.odd.bg   = \
bg

c.colors.tabs.selected.even.fg  = \
c.colors.tabs.selected.odd.fg   = \
colors[1]

# statusbar
c.colors.statusbar.normal.bg    = \
c.colors.statusbar.command.bg   = \
bg

# completion
c.colors.completion.category.bg             = \
c.colors.completion.category.border.bottom  = \
c.colors.completion.category.border.top     = \
c.colors.completion.even.bg                 = \
c.colors.completion.odd.bg                  = \
bg

# prompt
c.prompt.radius = 0
c.colors.prompts.bg = \
c.colors.prompts.border = \
bg

# context menu
c.colors.contextmenu.menu.bg = bg
c.colors.contextmenu.menu.fg = fg
c.colors.contextmenu.selected.fg = colors[1]
c.colors.contextmenu.disabled.fg = colors[2]

# padding
c.tabs.padding = c.statusbar.padding = {
  'top'   : 5,
  'right' : 5,
  'bottom': 5,
  'left'  : 5,
}

# misc

# force edge user agent on bing (thanks microsoft)
with config.pattern('*://*.bing.com/*') as p:
    p.content.headers.user_agent = "Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57"

# load autoconfig.yml
config.load_autoconfig()
