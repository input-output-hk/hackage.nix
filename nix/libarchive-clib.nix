{
  "3.8.2" = {
    sha256 = "efd685d941139340d4be9fd9355499dbb272da5bc94e1f021897284f59abc16c";
    revisions = {
      r0 = {
        nix = import ../hackage/libarchive-clib-3.8.2-r0-4fe07492da93a9e5a447fe910486d2b6cf14cc25cc78fa7ed68653d359f25644.nix;
        revNum = 0;
        sha256 = "4fe07492da93a9e5a447fe910486d2b6cf14cc25cc78fa7ed68653d359f25644";
      };
      default = "r0";
    };
  };
  "3.8.5" = {
    sha256 = "5922f0aa7844c5f6b797884feb84270c2a411d98feb766d0220cd6e01541546c";
    revisions = {
      r0 = {
        nix = import ../hackage/libarchive-clib-3.8.5-r0-19c4a7879185e5ab09f2dd4bca28c567e67785ec863e99717b058454159bcdca.nix;
        revNum = 0;
        sha256 = "19c4a7879185e5ab09f2dd4bca28c567e67785ec863e99717b058454159bcdca";
      };
      default = "r0";
    };
  };
}