{
  "0.1.0" = {
    sha256 = "9d805d86c961c1d45fca03431bff6751d68d9fad2d6f43ef27656539a065aeaa";
    revisions = {
      r0 = {
        nix = import ../hackage/sfmt-0.1.0-r0-b174361d8d8ad99da5eeccae717700de6d63ef4f2a0d57bfbabe03aff175afa1.nix;
        revNum = 0;
        sha256 = "b174361d8d8ad99da5eeccae717700de6d63ef4f2a0d57bfbabe03aff175afa1";
        };
      r1 = {
        nix = import ../hackage/sfmt-0.1.0-r1-e0b52289bb67a211186ecaa0f45275870e792430d71929cf4f1a66f29da071a4.nix;
        revNum = 1;
        sha256 = "e0b52289bb67a211186ecaa0f45275870e792430d71929cf4f1a66f29da071a4";
        };
      default = "r1";
      };
    };
  "0.1.1" = {
    sha256 = "e6862db41ac95e52e9110d666683f5c931b6175c86fc500aaf74cf39c8d49fcb";
    revisions = {
      r0 = {
        nix = import ../hackage/sfmt-0.1.1-r0-c6aa7ac2599a814cd0bc69941615b46da6f0241f82da612342ca59f935ab1ed7.nix;
        revNum = 0;
        sha256 = "c6aa7ac2599a814cd0bc69941615b46da6f0241f82da612342ca59f935ab1ed7";
        };
      default = "r0";
      };
    };
  }