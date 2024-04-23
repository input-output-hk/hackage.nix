{
  "0.1" = {
    sha256 = "fa5b2430e4b3dcd496a174d63c61406af281c9dd82a30dd99ad6239cb322a90d";
    revisions = {
      r0 = {
        nix = import ../hackage/except-exceptions-0.1-r0-604a86fd76836cdc89475fdff9da882099071c186bf4a73efa5c13f9163a6212.nix;
        revNum = 0;
        sha256 = "604a86fd76836cdc89475fdff9da882099071c186bf4a73efa5c13f9163a6212";
      };
      r1 = {
        nix = import ../hackage/except-exceptions-0.1-r1-13b6f202914c198786f1ba67596c5e43b6793424aa80461460b2eee373e02226.nix;
        revNum = 1;
        sha256 = "13b6f202914c198786f1ba67596c5e43b6793424aa80461460b2eee373e02226";
      };
      default = "r1";
    };
  };
}