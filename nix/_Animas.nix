{
  "0.1" = {
    sha256 = "397abfb47a1c6f3e85ad42d89db5f994a08d7a02c78a90b91f007838cb233cb7";
    revisions = {
      r0 = {
        nix = import ../hackage/Animas-0.1-r0-da869fd06d211f582543218bb624543ea4603686348f1c1cbb9a88b888050cdb.nix;
        revNum = 0;
        sha256 = "da869fd06d211f582543218bb624543ea4603686348f1c1cbb9a88b888050cdb";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "75cf0cd4d5264b4653c7c8f411b9cd325949c1fe98dcea3f6008e39174e27707";
    revisions = {
      r0 = {
        nix = import ../hackage/Animas-0.2-r0-b3c17f5ecc0b8088c4f4084c1a1075c32e0f6f4fac24f5914a1d44d5f8daa1c3.nix;
        revNum = 0;
        sha256 = "b3c17f5ecc0b8088c4f4084c1a1075c32e0f6f4fac24f5914a1d44d5f8daa1c3";
      };
      default = "r0";
    };
  };
}