$ = window.jQuery

# Api
Api = require 'zooniverse/lib/api'

api = if window.location.hostname is 'www.chimpandsee.org'
  new Api project: 'chimp', host: 'http://www.chimpandsee.org', path: '/_ouroboros_api/proxy'
else
  new Api project: 'chimp'

# Subject group setup
Subject = require 'zooniverse/models/subject'
Subject.group = true

# Top Bar
TopBar = require 'zooniverse/controllers/top-bar'
topBar = new TopBar
document.getElementById('top-bar').appendChild topBar.el[0]

# Google Analytics
GoogleAnalytics = require 'zooniverse/lib/google-analytics'
new GoogleAnalytics
  account: 'UA-1224199-17'
  domain: 'chimpandsee.org'


