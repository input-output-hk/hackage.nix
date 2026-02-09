{
  "0.1.0.0" = {
    sha256 = "03cc96c742a26d1b8a27fd74465d34dc40ef6279f08104992d387c76f7f639b5";
    revisions = {
      r0 = {
        nix = import ../hackage/IStr-0.1.0.0-r0-9f24652ee6a6149dde506bfb2bc2d88be77f3418699821392405d1aee6ed38d0.nix;
        revNum = 0;
        sha256 = "9f24652ee6a6149dde506bfb2bc2d88be77f3418699821392405d1aee6ed38d0";
      };
      r1 = {
        nix = import ../hackage/IStr-0.1.0.0-r1-c3840db2bb1394f32c77d9bf962a1029fd83ca114927808a402b49287732b848.nix;
        revNum = 1;
        sha256 = "c3840db2bb1394f32c77d9bf962a1029fd83ca114927808a402b49287732b848";
      };
      default = "r1";
    };
  };
}