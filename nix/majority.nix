{
  "1.0" = {
    sha256 = "af4fc220b97ffd637fa52bf73035c1ce0b573ca3bf1308b1745752146c09fcac";
    revisions = {
      r0 = {
        nix = import ../hackage/majority-1.0-r0-85bd6dd08a001c7b7ad3fabb1419a2f19acf2f29c27576935da0dec0221153c5.nix;
        revNum = 0;
        sha256 = "85bd6dd08a001c7b7ad3fabb1419a2f19acf2f29c27576935da0dec0221153c5";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "6afeabb09bd4be76bfefc34c7a461c34698c929e33e2ad301cf3c91411ef8290";
    revisions = {
      r0 = {
        nix = import ../hackage/majority-1.1-r0-182be3e12d433be6275e2537c6b009b4ebd2314979338c1ee73cbd97a36b5a66.nix;
        revNum = 0;
        sha256 = "182be3e12d433be6275e2537c6b009b4ebd2314979338c1ee73cbd97a36b5a66";
        };
      default = "r0";
      };
    };
  }