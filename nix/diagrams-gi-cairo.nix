{
  "1.4.2" = {
    sha256 = "c6ae84da296ee2d5c38d9228042c346e0778e2b120b5cf88ca9728bc77e0ce4c";
    revisions = {
      r0 = {
        nix = import ../hackage/diagrams-gi-cairo-1.4.2-r0-2c6d8d2f494bd9cc8a2b66d53c236e8a26c9206d23d9f5d36178f63a966f70e1.nix;
        revNum = 0;
        sha256 = "2c6d8d2f494bd9cc8a2b66d53c236e8a26c9206d23d9f5d36178f63a966f70e1";
      };
      r1 = {
        nix = import ../hackage/diagrams-gi-cairo-1.4.2-r1-0a819ba48a3f46628c43ccc2fd56e07b9908f7ac4ab761fc1af0f5c32c8237e4.nix;
        revNum = 1;
        sha256 = "0a819ba48a3f46628c43ccc2fd56e07b9908f7ac4ab761fc1af0f5c32c8237e4";
      };
      default = "r1";
    };
  };
}