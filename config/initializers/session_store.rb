# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_attendance_session',
  :secret      => 'de879ed9cb200f666572e5781ea74c7fd01e2cc52dfe2a1ee3dfe710f5e8de6b4099a11d73490c33aaa43325bc4e4186a97ea07cc6b813ff521a57144decca93'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
