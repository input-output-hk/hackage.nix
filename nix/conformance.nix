{
  "0.0.0.0" = {
    sha256 = "c33f434a84c286b9225e0d2675cc1ed18e45ab0b275ce8fe7d1d36fbc40f2561";
    revisions = {
      r0 = {
        nix = import ../hackage/conformance-0.0.0.0-r0-e277b23d065d8dfff92616a9031d934c54ab6f181ba0d907474b798f0029373b.nix;
        revNum = 0;
        sha256 = "e277b23d065d8dfff92616a9031d934c54ab6f181ba0d907474b798f0029373b";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "4c52ff58125ee402add6ecbb1d0020ae6c12136ab0c043d133b05e989590bfa1";
    revisions = {
      r0 = {
        nix = import ../hackage/conformance-0.1.0.0-r0-1b49d587700200308608b39fcd59378c7522318309b43f136a687f4c480cacfa.nix;
        revNum = 0;
        sha256 = "1b49d587700200308608b39fcd59378c7522318309b43f136a687f4c480cacfa";
      };
      default = "r0";
    };
  };
}