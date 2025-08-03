{
  "0" = {
    sha256 = "289473a00a8b810685490e1f1e8a29d32b42873cca16b993252d8d5078defc30";
    revisions = {
      r0 = {
        nix = import ../hackage/sasha-0-r0-f945fbd15058005fa6bd72b08d984763167d53d9d3273651751f91600b865b29.nix;
        revNum = 0;
        sha256 = "f945fbd15058005fa6bd72b08d984763167d53d9d3273651751f91600b865b29";
      };
      default = "r0";
    };
  };
  "0.1" = {
    sha256 = "32201b6b017a19fd291149020a402ed2180746fa938f30f5f2027b85512c2721";
    revisions = {
      r0 = {
        nix = import ../hackage/sasha-0.1-r0-c1954752aaf6403d5349181b6ced17e443bd174f53c01abfe38d6d8b6e579ed6.nix;
        revNum = 0;
        sha256 = "c1954752aaf6403d5349181b6ced17e443bd174f53c01abfe38d6d8b6e579ed6";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "60e3839d14e11a07263dc64d8958f797534a492f4d3f196d74cf9264578329fd";
    revisions = {
      r0 = {
        nix = import ../hackage/sasha-0.2-r0-284df88b89eee779613782bd0644e2d42656377c9cae49af67cfaeaea9cb3712.nix;
        revNum = 0;
        sha256 = "284df88b89eee779613782bd0644e2d42656377c9cae49af67cfaeaea9cb3712";
      };
      r1 = {
        nix = import ../hackage/sasha-0.2-r1-16079c6e84727a1b3cbdd4582c3cacf28700b703aa1f54f37ba745a924296c4c.nix;
        revNum = 1;
        sha256 = "16079c6e84727a1b3cbdd4582c3cacf28700b703aa1f54f37ba745a924296c4c";
      };
      r2 = {
        nix = import ../hackage/sasha-0.2-r2-c4e5ce87414b04bcd09e1a03f39ab956f8cd5bc7bec94e7b772a3a3a4396ff1f.nix;
        revNum = 2;
        sha256 = "c4e5ce87414b04bcd09e1a03f39ab956f8cd5bc7bec94e7b772a3a3a4396ff1f";
      };
      default = "r2";
    };
  };
}