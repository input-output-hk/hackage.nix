{
  "0.1.0.0" = {
    sha256 = "81e5a9453035a47cdbf0ba58bc5e384938c6f5c8b43b9ba5f55125c56e2ca0a7";
    revisions = {
      r0 = {
        nix = import ../hackage/holidays-0.1.0.0-r0-8c3ec695dbd79c2f68c642353eae6ecca6b252d379647ecf06247ee6798ebdaf.nix;
        revNum = 0;
        sha256 = "8c3ec695dbd79c2f68c642353eae6ecca6b252d379647ecf06247ee6798ebdaf";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "8e219837acaddaac1bb6cb7cdf1709c9351eedb66ed1463999a86052ecadb0db";
    revisions = {
      r0 = {
        nix = import ../hackage/holidays-0.2.0.0-r0-623e436ab9c0d86f6ccbe53e98ad9a7435c2ad5be4f693081114933335aa22cf.nix;
        revNum = 0;
        sha256 = "623e436ab9c0d86f6ccbe53e98ad9a7435c2ad5be4f693081114933335aa22cf";
      };
      default = "r0";
    };
  };
}