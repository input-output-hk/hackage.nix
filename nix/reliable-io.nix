{
  "0.0.1" = {
    sha256 = "7dbf21c93d5a43360bf98c46beb534d400cb562376d24b37fbce58a6902e7735";
    revisions = {
      r0 = {
        nix = import ../hackage/reliable-io-0.0.1-r0-bb604e83cc845d67030efe1f069d9d74b5958f3755caec4ea22edc12dd0c6d4d.nix;
        revNum = 0;
        sha256 = "bb604e83cc845d67030efe1f069d9d74b5958f3755caec4ea22edc12dd0c6d4d";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "668a1da5b8bf29510692296822a17afb3217508e5a330570ca525c74bb400c96";
    revisions = {
      r0 = {
        nix = import ../hackage/reliable-io-0.0.2-r0-f618a6dfdc38b1f88df7b85c1b66856c65720aff86494f29415dbf366b30c6e3.nix;
        revNum = 0;
        sha256 = "f618a6dfdc38b1f88df7b85c1b66856c65720aff86494f29415dbf366b30c6e3";
      };
      default = "r0";
    };
  };
}