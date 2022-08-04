{
  "1.0" = {
    sha256 = "5bbf2dfbe8427d11c470a2dacd4cd8812097b9f8963eb0b3711605b1eac02ba1";
    revisions = {
      r0 = {
        nix = import ../hackage/lvmlib-1.0-r0-589131feaf8c9ea7a2904d218fdad36ef1d69f577b39016bc90b93066a5a1483.nix;
        revNum = 0;
        sha256 = "589131feaf8c9ea7a2904d218fdad36ef1d69f577b39016bc90b93066a5a1483";
        };
      r1 = {
        nix = import ../hackage/lvmlib-1.0-r1-1c54a8471d28fe183cd136acff999ada251363ef60de58bb8b904eb277fe4ffd.nix;
        revNum = 1;
        sha256 = "1c54a8471d28fe183cd136acff999ada251363ef60de58bb8b904eb277fe4ffd";
        };
      default = "r1";
      };
    };
  "1.1" = {
    sha256 = "6f99e1ed437d45ecdbb019185d24bc920f7965f279f3b1cec268d51350c622d3";
    revisions = {
      r0 = {
        nix = import ../hackage/lvmlib-1.1-r0-89876e802e0eaa476cd72cccc18dbc3ee5cfdad34d36f8754b575c8aa47f11d7.nix;
        revNum = 0;
        sha256 = "89876e802e0eaa476cd72cccc18dbc3ee5cfdad34d36f8754b575c8aa47f11d7";
        };
      r1 = {
        nix = import ../hackage/lvmlib-1.1-r1-93202794dad7345f097bd54b57352256cba8998251865d2909d9576d0bc20f2e.nix;
        revNum = 1;
        sha256 = "93202794dad7345f097bd54b57352256cba8998251865d2909d9576d0bc20f2e";
        };
      default = "r1";
      };
    };
  }