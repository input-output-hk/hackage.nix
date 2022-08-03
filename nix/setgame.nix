{
  "1.1" = {
    sha256 = "34b0c18e84023bc1785a18386663be136ac3d02f901cf8106942d4d3c89a22c3";
    revisions = {
      r0 = {
        nix = import ../hackage/setgame-1.1-r0-6b633d5a00993f25b847201b0b6f8a13398eb2aabbeb421552347772a2322a38.nix;
        revNum = 0;
        sha256 = "6b633d5a00993f25b847201b0b6f8a13398eb2aabbeb421552347772a2322a38";
        };
      r1 = {
        nix = import ../hackage/setgame-1.1-r1-dc7d4f84053b4539d10d4ca42a3171319c4292b3d34c96fc3b846d2babab13ea.nix;
        revNum = 1;
        sha256 = "dc7d4f84053b4539d10d4ca42a3171319c4292b3d34c96fc3b846d2babab13ea";
        };
      r2 = {
        nix = import ../hackage/setgame-1.1-r2-a8ec21016ec35ad61255683ea13fb136bfa9ef9e74b393f0ccdd0de8a5da6131.nix;
        revNum = 2;
        sha256 = "a8ec21016ec35ad61255683ea13fb136bfa9ef9e74b393f0ccdd0de8a5da6131";
        };
      default = "r2";
      };
    };
  }