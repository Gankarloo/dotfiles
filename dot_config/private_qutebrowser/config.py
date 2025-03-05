# This is here so configs done via the GUI are still loaded.
# Remove it to not load settings done via the GUI.
config.load_autoconfig(True)

# Allow external content when viewing mail
config.set('content.local_content_can_access_remote_urls', True, 'file:///tmp/tmp*')

