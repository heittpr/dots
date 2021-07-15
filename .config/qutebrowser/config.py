from qutebrowser.api import interceptor
from os import environ as env
import json

### basic

c.downloads.location.directory = '/home/heitor/'
c.content.pdfjs = True
c.content.notifications.enabled = False
c.editor.command = ['alacritty', '--class', 'float', '-e', 'nvim', '{file}']

c.url.searchengines = {
  'DEFAULT': 'https://www.google.com/search?q={}',
  'v': 'https://docs.voidlinux.org/?search={}',
  'w': 'https://wikipedia.org/w/index.php?search={}',
  'y': 'https://www.youtube.com/results?search_query={}'
}

c.url.default_page= '/home/heitor/.config/qutebrowser/default.html'

c.fonts.default_family = "M+ 1m"
c.fonts.web.family.standard = "Noto Sans"
c.fonts.web.family.sans_serif = "Noto Sans"
c.fonts.web.family.serif = "Noto Serif"
c.fonts.web.family.fantasy = "Impact"
c.fonts.web.family.fixed = "Consolas"

# c.qt.args += [
#  'ignore-gpu-blacklist',
#  'enable-gpu-rasterization',
#  'enable-native-gpu-memory-buffers',
#  'num-raster-threads=4'
# ]

### shortcuts

config.bind('xs', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle tabs.show always never;; config-cycle statusbar.show always never')

# pass_args = ' -p /home/heitor/.local/share/pass' #--username-target secret --username-pattern "username: (.+)"'

# config.bind('zl', 'spawn --userscript qute-pass' + pass_args)
# config.bind('zul', 'spawn --userscript qute-pass --username-only')
# config.bind('zpl', 'spawn --userscript qute-pass --password-only')
# config.bind('zol', 'spawn --userscript qute-pass --otp-only')

### theme

# load wal colors
with open(env['XDG_CACHE_HOME'] + '/wal/colors.json') as f:
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

### padding

c.tabs.padding = c.statusbar.padding = {
  'top'   : 5,
  'right' : 5,
  'bottom': 5,
  'left'  : 5,
}

c.tabs.title.alignment = 'left'

# load autoconfig.yml
config.load_autoconfig()
