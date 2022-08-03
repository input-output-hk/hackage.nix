{
  "0.9" = {
    sha256 = "6eba64e2cbb12d2494c9d10bdbe7ccd3d552dec2ced1fcaf41d952ee89329bc2";
    revisions = {
      r0 = {
        nix = import ../hackage/compdata-automata-0.9-r0-cae422e93880c7312e968abb2a3482aa6eee1a6fb4b4f9400e67824eae18e8da.nix;
        revNum = 0;
        sha256 = "cae422e93880c7312e968abb2a3482aa6eee1a6fb4b4f9400e67824eae18e8da";
        };
      r1 = {
        nix = import ../hackage/compdata-automata-0.9-r1-f8bda15b8d1d1e56f64c37f39ac8ba1c7bf860c291adad3698041eee68146130.nix;
        revNum = 1;
        sha256 = "f8bda15b8d1d1e56f64c37f39ac8ba1c7bf860c291adad3698041eee68146130";
        };
      default = "r1";
      };
    };
  "0.9.1" = {
    sha256 = "9e112e485662bf16dc9fa85c6e820366d6c21efbe3cfacfab4539ec9b43698b4";
    revisions = {
      r0 = {
        nix = import ../hackage/compdata-automata-0.9.1-r0-bb76aab9fe81fa54c97c5a087b311a7650bfe0fe29407f70e6ea324829ce0a0b.nix;
        revNum = 0;
        sha256 = "bb76aab9fe81fa54c97c5a087b311a7650bfe0fe29407f70e6ea324829ce0a0b";
        };
      default = "r0";
      };
    };
  "0.9.2" = {
    sha256 = "295c641994c9be29ed95e1632d22ee659bb9c378f592a6aeafae88b927ad6079";
    revisions = {
      r0 = {
        nix = import ../hackage/compdata-automata-0.9.2-r0-abe15e212829d8c44af1fca5c350380a2675d9e6c87e84338930ac7ff7b5efeb.nix;
        revNum = 0;
        sha256 = "abe15e212829d8c44af1fca5c350380a2675d9e6c87e84338930ac7ff7b5efeb";
        };
      default = "r0";
      };
    };
  }