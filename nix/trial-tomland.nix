{
  "0.0.0.0" = {
    sha256 = "43f430b974a208e87a32e2d45cf9e6f3c22f5873770ca379968b58a90a76748a";
    revisions = {
      r0 = {
        nix = import ../hackage/trial-tomland-0.0.0.0-r0-baf2f085376392e71bb725b8626dbfa5e91d2af4b2e5690c7c69574d2462497f.nix;
        revNum = 0;
        sha256 = "baf2f085376392e71bb725b8626dbfa5e91d2af4b2e5690c7c69574d2462497f";
        };
      r1 = {
        nix = import ../hackage/trial-tomland-0.0.0.0-r1-743a9baaa36891ed3a44618fdfd5bc4ed9afc39cf9b9fa23ea1b96f3787f5ec0.nix;
        revNum = 1;
        sha256 = "743a9baaa36891ed3a44618fdfd5bc4ed9afc39cf9b9fa23ea1b96f3787f5ec0";
        };
      default = "r1";
      };
    };
  }