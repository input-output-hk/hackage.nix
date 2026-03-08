{
  "0.0.0" = {
    sha256 = "7b0b7dfb4f7081beab54c4cb0cb3df3f3c03ce05cb11747f190bab22df19b83c";
    revisions = {
      r0 = {
        nix = import ../hackage/hpke-0.0.0-r0-8b08034f409a6db22486da680843cb6049ef25808e0ad82f5c75bc147bcc5f8f.nix;
        revNum = 0;
        sha256 = "8b08034f409a6db22486da680843cb6049ef25808e0ad82f5c75bc147bcc5f8f";
      };
      r1 = {
        nix = import ../hackage/hpke-0.0.0-r1-d04ff5eb9cdb9385ed9ad9db7e05ddf457af37cedaa3cee83f58c93e0d16364d.nix;
        revNum = 1;
        sha256 = "d04ff5eb9cdb9385ed9ad9db7e05ddf457af37cedaa3cee83f58c93e0d16364d";
      };
      default = "r1";
    };
  };
  "0.1.0" = {
    sha256 = "1a00e05c344b17f7d2b28ae19576c2aec348d71c995583f8588264a59dc87fa2";
    revisions = {
      r0 = {
        nix = import ../hackage/hpke-0.1.0-r0-fb107670a0aeb91b4626e0b1dff4e7ec3342e48931cc994938d95af1a23f645d.nix;
        revNum = 0;
        sha256 = "fb107670a0aeb91b4626e0b1dff4e7ec3342e48931cc994938d95af1a23f645d";
      };
      default = "r0";
    };
  };
}