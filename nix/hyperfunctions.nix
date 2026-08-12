{
  "0" = {
    sha256 = "757ebcac2afdab089b9c1bb5e7b6ea7642d450e430b6c97f3089d38fc5138560";
    revisions = {
      r0 = {
        nix = import ../hackage/hyperfunctions-0-r0-f817c2dbd998a254165087ded754404b5c957168c2428be38617e55dff18cf43.nix;
        revNum = 0;
        sha256 = "f817c2dbd998a254165087ded754404b5c957168c2428be38617e55dff18cf43";
      };
      r1 = {
        nix = import ../hackage/hyperfunctions-0-r1-18af314358bbba2dd771bfb8272856539dcb92fa242c490b4b6dd928ee519b7b.nix;
        revNum = 1;
        sha256 = "18af314358bbba2dd771bfb8272856539dcb92fa242c490b4b6dd928ee519b7b";
      };
      default = "r1";
    };
  };
}