{
  "0.1.0.0" = {
    sha256 = "51230d70e3e7f96b9e58754fbf8844fb8cf59bef09c6c4400cc9d1b771e915b2";
    revisions = {
      r0 = {
        nix = import ../hackage/base-encoding-0.1.0.0-r0-28f9bb6e0299b9873627b9ac421582ef17065c6b32786cba8f2ce09dee27728e.nix;
        revNum = 0;
        sha256 = "28f9bb6e0299b9873627b9ac421582ef17065c6b32786cba8f2ce09dee27728e";
        };
      r1 = {
        nix = import ../hackage/base-encoding-0.1.0.0-r1-c135e34d919d1873f79b0b93600b11a7adaa36c4436c78212e95e3db14d53e56.nix;
        revNum = 1;
        sha256 = "c135e34d919d1873f79b0b93600b11a7adaa36c4436c78212e95e3db14d53e56";
        };
      r2 = {
        nix = import ../hackage/base-encoding-0.1.0.0-r2-5d1bef40daf8520782f7f20c33ece9f6fec1a31c4c437f3a01f3e83f80de8e3a.nix;
        revNum = 2;
        sha256 = "5d1bef40daf8520782f7f20c33ece9f6fec1a31c4c437f3a01f3e83f80de8e3a";
        };
      default = "r2";
      };
    };
  "0.2.0.0" = {
    sha256 = "e12e3898b5c4f2175b10d0aa2b4cfba01d2dac9fe9ee2fc914f0da75d73d0b09";
    revisions = {
      r0 = {
        nix = import ../hackage/base-encoding-0.2.0.0-r0-aea85215ff6f92e94d559e779e25e18b6722299ed9c4d2bcf6a66fb9808f0812.nix;
        revNum = 0;
        sha256 = "aea85215ff6f92e94d559e779e25e18b6722299ed9c4d2bcf6a66fb9808f0812";
        };
      default = "r0";
      };
    };
  "0.3.0.0" = {
    sha256 = "482bcbc72fb06e28c196f08404e83aedd720ef923a23594ce8c3e775397998d1";
    revisions = {
      r0 = {
        nix = import ../hackage/base-encoding-0.3.0.0-r0-e03559402549b9781834e001c281a1e055bbd9e6275e5a6ad74e4dbfd4473f98.nix;
        revNum = 0;
        sha256 = "e03559402549b9781834e001c281a1e055bbd9e6275e5a6ad74e4dbfd4473f98";
        };
      default = "r0";
      };
    };
  }