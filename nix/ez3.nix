{
  "0.1.0.0" = {
    sha256 = "44bf73edca8ab449dc29d8a0caf870cd0f336d4c07fe9883b1f808f86c44515c";
    revisions = {
      r0 = {
        nix = import ../hackage/ez3-0.1.0.0-r0-e3b4b96433309b4cf5640f0f09fcec6541a210524b699f29f78e4047a2adba04.nix;
        revNum = 0;
        sha256 = "e3b4b96433309b4cf5640f0f09fcec6541a210524b699f29f78e4047a2adba04";
        };
      r1 = {
        nix = import ../hackage/ez3-0.1.0.0-r1-fc98eebcf6533bc47e705c6015f82d537df4b7e24407deaa03b7cf9cfd20f98e.nix;
        revNum = 1;
        sha256 = "fc98eebcf6533bc47e705c6015f82d537df4b7e24407deaa03b7cf9cfd20f98e";
        };
      r2 = {
        nix = import ../hackage/ez3-0.1.0.0-r2-c24d106ff487d0d7d998c6a798dbba27cf296dad32b918b9df3d5162fed40ef4.nix;
        revNum = 2;
        sha256 = "c24d106ff487d0d7d998c6a798dbba27cf296dad32b918b9df3d5162fed40ef4";
        };
      default = "r2";
      };
    };
  }