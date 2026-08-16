{
  "0.1.0.0" = {
    sha256 = "4837a241aa054f85f3f5e0c4cd01887bcd4535b0b6c3537457bb844961cbf32e";
    revisions = {
      r0 = {
        nix = import ../hackage/kb-text-layout-0.1.0.0-r0-28df424afafe986b4c3b1de4446f3a7396377ac40d0b6af2cb570234b768146f.nix;
        revNum = 0;
        sha256 = "28df424afafe986b4c3b1de4446f3a7396377ac40d0b6af2cb570234b768146f";
      };
      r1 = {
        nix = import ../hackage/kb-text-layout-0.1.0.0-r1-00439190370e92466ea64fefb1339a69a9335a88397acc485384e21a3a18e1b4.nix;
        revNum = 1;
        sha256 = "00439190370e92466ea64fefb1339a69a9335a88397acc485384e21a3a18e1b4";
      };
      default = "r1";
    };
  };
}