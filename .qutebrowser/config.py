c.url.start_pages   = "https://www.google.com/"
c.url.default_page  = "https://www.google.com/"
c.url.searchengines = {"DEFAULT": "https://www.google.com/search?q={}"}

config.unbind("J", mode="normal")
config.unbind("K", mode="normal")
config.bind("J", "tab-prev")
config.bind("K", "tab-next")
