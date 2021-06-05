import json
from os import environ as env

### basic

c.content.pdfjs = True
c.url.searchengines = {
  'DEFAULT': 'https://www.google.com/search?q={}',
  'v': 'https://docs.voidlinux.org/?search={}'
}

### shortcuts

config.bind('xs', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle tabs.show always never;; config-cycle statusbar.show always never')

### colors

# load wal colors
with open(env['XDG_CACHE_HOME'] + '/wal/colors.json') as f:
    wal = json.load(f)

bg = wal['special']['background']
fg = wal['special']['foreground']

# tabs
c.colors.tabs.bar.bg = bg
c.colors.tabs.even.bg = bg
c.colors.tabs.odd.bg = bg
c.colors.tabs.selected.even.bg = bg
c.colors.tabs.selected.odd.bg = bg

# statusbar
c.colors.statusbar.normal.bg = bg
c.colors.statusbar.command.bg = bg

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
