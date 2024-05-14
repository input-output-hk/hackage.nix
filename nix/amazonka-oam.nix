{
  "2.0" = {
    sha256 = "4064c1e568a5784224c277ad75f7f2a41da1542f28d7dd08ff61e6118a7b1376";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-oam-2.0-r0-e7953908bfceefa366f3e5652f1e8d9420576ec076ff27c85201c35a80bfb9cb.nix;
        revNum = 0;
        sha256 = "e7953908bfceefa366f3e5652f1e8d9420576ec076ff27c85201c35a80bfb9cb";
      };
      r1 = {
        nix = import ../hackage/amazonka-oam-2.0-r1-a26138c811af8b280147e80e12422bf6928d071edfaa81648d066f5ed01be0f0.nix;
        revNum = 1;
        sha256 = "a26138c811af8b280147e80e12422bf6928d071edfaa81648d066f5ed01be0f0";
      };
      default = "r1";
    };
  };
}