{
  "2.0" = {
    sha256 = "8a3e95b6f52a7178b5f179a80b8682d3b633eab18f4ff7f7f5a0d660d86b6da7";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-codestar-connections-2.0-r0-e094cb91a91d87570304595ec85bfbbff1c18c16eca11e5a95485383c0a6f60c.nix;
        revNum = 0;
        sha256 = "e094cb91a91d87570304595ec85bfbbff1c18c16eca11e5a95485383c0a6f60c";
      };
      r1 = {
        nix = import ../hackage/amazonka-codestar-connections-2.0-r1-eeb3177a9c546fbf715b532179c7b0e09b678cbbc1cbd0b54b1deba0ce41c5cf.nix;
        revNum = 1;
        sha256 = "eeb3177a9c546fbf715b532179c7b0e09b678cbbc1cbd0b54b1deba0ce41c5cf";
      };
      default = "r1";
    };
  };
}