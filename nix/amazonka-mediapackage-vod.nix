{
  "2.0" = {
    sha256 = "037340b14b08bad1a4ad1e0574e9d1af5a63afbf492259aa1666b54b4a7a1c34";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediapackage-vod-2.0-r0-7c9d4af920f14d219b60e07f42b70d33f29f901c84759f41f990e02bcae8b64c.nix;
        revNum = 0;
        sha256 = "7c9d4af920f14d219b60e07f42b70d33f29f901c84759f41f990e02bcae8b64c";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediapackage-vod-2.0-r1-b8972c42279014151c538461312fbb70ac2124bd7e54f51a64e1ff9871931a37.nix;
        revNum = 1;
        sha256 = "b8972c42279014151c538461312fbb70ac2124bd7e54f51a64e1ff9871931a37";
      };
      default = "r1";
    };
  };
}