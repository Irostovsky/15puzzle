# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_15puzzle_session',
  :secret      => '5dbb43866ba6210dbfff4aa018199a560c013ab58b2ca3501be1bfba779fdb443895902a09f25b987834460291526920a2c867cdc1521a12c84a875f71ffa3ee'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
