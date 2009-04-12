# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wisp-fe_session',
  :secret      => 'f85b1e784669e97d444f28bcc57b3e8edfef28dfed56f857589484fe6ce1148f0a74059c99cf5e90d25743f65646be02da8e344e425465a367fadade80af6b06'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
