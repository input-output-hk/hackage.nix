{
  "1.1.0.0" = {
    sha256 = "225fcf285501782a23047dd89d1b867c7db82695103fb9b3f3ed2843d0a75442";
    revisions = {
      r0 = {
        nix = import ../hackage/qbe-1.1.0.0-r0-1162fbe0cc6648c21b5f4afdbbdbfcf2b172a808d19769962f1dfe963e964b08.nix;
        revNum = 0;
        sha256 = "1162fbe0cc6648c21b5f4afdbbdbfcf2b172a808d19769962f1dfe963e964b08";
      };
      r1 = {
        nix = import ../hackage/qbe-1.1.0.0-r1-6c4a3863e80b45e69e2f6f9b26192d6c95b6b2ff63f1a779004fdc36e5d1ba6b.nix;
        revNum = 1;
        sha256 = "6c4a3863e80b45e69e2f6f9b26192d6c95b6b2ff63f1a779004fdc36e5d1ba6b";
      };
      default = "r1";
    };
  };
}