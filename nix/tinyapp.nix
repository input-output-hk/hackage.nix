{
  "0.1.0.0" = {
    sha256 = "10556c89c9c51906ab28c59efacd4f88ea715bbbdda4aa569ef7ef80939f15ef";
    revisions = {
      r0 = {
        nix = import ../hackage/tinyapp-0.1.0.0-r0-9879b60b60e8c47f173d56a90464368d8221f8ebbc3b19c6083a8a76cfe9156a.nix;
        revNum = 0;
        sha256 = "9879b60b60e8c47f173d56a90464368d8221f8ebbc3b19c6083a8a76cfe9156a";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "2187461b700962e4f8e8cca16f9ad99b6e8040a5aaa29ae09f48f4b4d6fda672";
    revisions = {
      r0 = {
        nix = import ../hackage/tinyapp-0.1.0.1-r0-fcc84b7e11a52c60f143cfb1e78e305e9b516143ae4c239fdcbd99ee2c845874.nix;
        revNum = 0;
        sha256 = "fcc84b7e11a52c60f143cfb1e78e305e9b516143ae4c239fdcbd99ee2c845874";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "8122465e02651faf7b52b85d123edac1a7eeca557de05e2a7b97d55fb60350f7";
    revisions = {
      r0 = {
        nix = import ../hackage/tinyapp-0.1.0.2-r0-3c4082f994cd6cf06c71e35ca8195ad9b0c81bd10bb26d1c3cfa5fb9cb81a183.nix;
        revNum = 0;
        sha256 = "3c4082f994cd6cf06c71e35ca8195ad9b0c81bd10bb26d1c3cfa5fb9cb81a183";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "a503f1c72d8c6a8dc38ae136d7be5f83aee203ec157051ffcc5e2e6d0346115e";
    revisions = {
      r0 = {
        nix = import ../hackage/tinyapp-0.2.0.0-r0-11b05a8c9f1868aab214f76a524863a95681e053daea6d0d6d23f818e0b166b0.nix;
        revNum = 0;
        sha256 = "11b05a8c9f1868aab214f76a524863a95681e053daea6d0d6d23f818e0b166b0";
      };
      r1 = {
        nix = import ../hackage/tinyapp-0.2.0.0-r1-3888f99af680dc85809115fdbfb44682b95bf60239093310b6256b732b93777a.nix;
        revNum = 1;
        sha256 = "3888f99af680dc85809115fdbfb44682b95bf60239093310b6256b732b93777a";
      };
      default = "r1";
    };
  };
}