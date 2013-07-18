require 'openssl'

# Just skip around the open ssl issue on my puter...
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV.fetch('GOOGLE_DRIVE_API_CLIENT_KEY'), ENV.fetch('GOOGLE_DRIVE_API_CLIENT_SECRET'), {
    name: "google_login",
    scope: [
      'userinfo.email',
      'userinfo.profile',
      'https://www.googleapis.com/auth/drive',
      'https://www.googleapis.com/auth/drive.file',
      'https://docs.google.com/feeds/',
      'https://docs.googleusercontent.com/',
      'https://spreadsheets.google.com/feeds/'
    ].join(',')
  }
end
