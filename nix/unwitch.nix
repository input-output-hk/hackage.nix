{
  "1.0.0" = {
    sha256 = "d9d15dfe2731de1526a831d4879d5a46a35a83610953c2b69afbd0c27689fd31";
    revisions = {
      r0 = {
        nix = import ../hackage/unwitch-1.0.0-r0-465ea18073bb09b6a8c62572de26108317aeebd05f25df99a9fad89ed00ce9af.nix;
        revNum = 0;
        sha256 = "465ea18073bb09b6a8c62572de26108317aeebd05f25df99a9fad89ed00ce9af";
      };
      default = "r0";
    };
  };
  "2.0.0" = {
    sha256 = "7b674096c2d02e9641ce160e13c30e5421c55c438934d4567c8f1dfbe4c07e75";
    revisions = {
      r0 = {
        nix = import ../hackage/unwitch-2.0.0-r0-d18b8f410746124d9ebbe7d847b804c02b27d9d5c22a5b8b8939a1533082ccfc.nix;
        revNum = 0;
        sha256 = "d18b8f410746124d9ebbe7d847b804c02b27d9d5c22a5b8b8939a1533082ccfc";
      };
      default = "r0";
    };
  };
}