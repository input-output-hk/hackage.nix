{
  "1.0.0" = {
    sha256 = "9f730c3cc04ea629e0b655bfff66f83e146eb3b9f0908d5dc00b4c558d5f5a43";
    revisions = {
      r0 = {
        nix = import ../hackage/siggy-chardust-1.0.0-r0-73d49e535a33226f7d924972ae052eefbb8ea9f9a8bd9acd4c981aa640bc40d1.nix;
        revNum = 0;
        sha256 = "73d49e535a33226f7d924972ae052eefbb8ea9f9a8bd9acd4c981aa640bc40d1";
      };
      r1 = {
        nix = import ../hackage/siggy-chardust-1.0.0-r1-6b8ce9ea6b344650e47f68d194835091c8bafe90ea88c37abcb8409365a876d2.nix;
        revNum = 1;
        sha256 = "6b8ce9ea6b344650e47f68d194835091c8bafe90ea88c37abcb8409365a876d2";
      };
      default = "r1";
    };
  };
}