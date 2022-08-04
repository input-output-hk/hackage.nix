{
  "1.8" = {
    sha256 = "38930337589b51978e346bcbf217da4130eb214557194c5dc2e04ed8699c175a";
    revisions = {
      r0 = {
        nix = import ../hackage/helium-1.8-r0-c215b0bfc8a1904e78d9806550323c6c6676a5f111716cb5638c85c2a321dd6a.nix;
        revNum = 0;
        sha256 = "c215b0bfc8a1904e78d9806550323c6c6676a5f111716cb5638c85c2a321dd6a";
        };
      default = "r0";
      };
    };
  "1.8.1" = {
    sha256 = "b2c0c29c31f495c4d4ab55bec3cfa84dba19efc3cdf2e699bcc350ee0a44936f";
    revisions = {
      r0 = {
        nix = import ../hackage/helium-1.8.1-r0-f1a64a56451df33da5c70566800e89cdd3c5bde039110a66a1f5bfd843590a76.nix;
        revNum = 0;
        sha256 = "f1a64a56451df33da5c70566800e89cdd3c5bde039110a66a1f5bfd843590a76";
        };
      default = "r0";
      };
    };
  }