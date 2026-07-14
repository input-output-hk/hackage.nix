{
  "1.0.0.0" = {
    sha256 = "c3b7b2727aac14a0b8930a0084a073a37059cbcd59bd0f7b9d5ef3cea568bf9f";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-migrate-embed-1.0.0.0-r0-cea19b304e1a607e471ff6c81b7fb8492558dd54746bff26c1191a9e050b5b59.nix;
        revNum = 0;
        sha256 = "cea19b304e1a607e471ff6c81b7fb8492558dd54746bff26c1191a9e050b5b59";
      };
      default = "r0";
    };
  };
  "1.1.0.0" = {
    sha256 = "514e8da3816f021ce34bb5aa75853b06c46a634481118143c8a9d4c6a9968688";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-migrate-embed-1.1.0.0-r0-05910f5c1f9522958a1ce845bddbd1e3105b298488d7c125793eeabd63097150.nix;
        revNum = 0;
        sha256 = "05910f5c1f9522958a1ce845bddbd1e3105b298488d7c125793eeabd63097150";
      };
      default = "r0";
    };
  };
}