# log out of the aeolus conductor
define aeolus::conductor::logout(){
  web_request{ "${name}-conductor-logout":
    post         => 'https://localhost/conductor/logout',
    parameters  => { 'login'    => "admin", 'password' => "password",
                     'commit'                 => 'submit' },
    returns     => '200',
    follow      => true,
    use_cookies_at => "/tmp/aeolus-$name",
    remove_cookies => true
  }
}
