{
  "0.1.0" = {
    sha256 = "a0a8f07a0ca0023af230af2d0d5df80f36ee7e831aa8f670fcf26a733ad1042f";
    revisions = {
      r0 = {
        nix = import ../hackage/hasql-listen-notify-0.1.0-r0-d7eb8385b4b8351cda98c74dea52e96b118d60436f4d265147680b8ac4763766.nix;
        revNum = 0;
        sha256 = "d7eb8385b4b8351cda98c74dea52e96b118d60436f4d265147680b8ac4763766";
        };
      r1 = {
        nix = import ../hackage/hasql-listen-notify-0.1.0-r1-3d27b89a9973cceeaa38ffe8d2d0401434ba8ac2bd50e803ffe46cb9ba19648e.nix;
        revNum = 1;
        sha256 = "3d27b89a9973cceeaa38ffe8d2d0401434ba8ac2bd50e803ffe46cb9ba19648e";
        };
      default = "r1";
      };
    };
  }