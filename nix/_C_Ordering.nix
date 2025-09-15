{
  "2.1" = {
    sha256 = "b5d121cb6ae99638e9a2948c539ff793773647f3f428c2d8ef71b305bc09ace2";
    revisions = {
      r0 = {
        nix = import ../hackage/COrdering-2.1-r0-ee1271046c033d1d76d312d5c7fdadcab6caf7bb119b713a0f75bd00ec3502fa.nix;
        revNum = 0;
        sha256 = "ee1271046c033d1d76d312d5c7fdadcab6caf7bb119b713a0f75bd00ec3502fa";
      };
      r1 = {
        nix = import ../hackage/COrdering-2.1-r1-4121d9d17488ad31693b7866c160beac52529f2b9dfdd3330c1510e72d86454e.nix;
        revNum = 1;
        sha256 = "4121d9d17488ad31693b7866c160beac52529f2b9dfdd3330c1510e72d86454e";
      };
      default = "r1";
    };
  };
  "2.2" = {
    sha256 = "7f0ae34b62e67d406811929b676d2cdae5ea7d07438384e49151088e8b2a2069";
    revisions = {
      r0 = {
        nix = import ../hackage/COrdering-2.2-r0-0e9b8536da31ecd2f8751c293f344e2b4b7e5cfef163e5647f137969e3e601a5.nix;
        revNum = 0;
        sha256 = "0e9b8536da31ecd2f8751c293f344e2b4b7e5cfef163e5647f137969e3e601a5";
      };
      r1 = {
        nix = import ../hackage/COrdering-2.2-r1-220ef59a551e9023cfad88052a8990c2e5a7fdd7e3c4e033a4d3ac998d09c3c0.nix;
        revNum = 1;
        sha256 = "220ef59a551e9023cfad88052a8990c2e5a7fdd7e3c4e033a4d3ac998d09c3c0";
      };
      default = "r1";
    };
  };
  "2.3" = {
    sha256 = "a8b3b0082290e4f98242db57489e57f369d5b3f40efb695cc02a673f39d96ad2";
    revisions = {
      r0 = {
        nix = import ../hackage/COrdering-2.3-r0-e539beab07d37b9de4698e22da3e8ab6331d04fc9afed071eedd36dbffce6c2f.nix;
        revNum = 0;
        sha256 = "e539beab07d37b9de4698e22da3e8ab6331d04fc9afed071eedd36dbffce6c2f";
      };
      r1 = {
        nix = import ../hackage/COrdering-2.3-r1-3b58c6ea7dfc169724c65fe8449e66e9f3fd7354d11d8315daf61d7914807e01.nix;
        revNum = 1;
        sha256 = "3b58c6ea7dfc169724c65fe8449e66e9f3fd7354d11d8315daf61d7914807e01";
      };
      default = "r1";
    };
  };
  "2.3.1" = {
    sha256 = "838f174bc6809a0936d2c3a1786a45be6730a5c94baaaa7147275bddf3a1c9d7";
    revisions = {
      r0 = {
        nix = import ../hackage/COrdering-2.3.1-r0-60c7328d87f41de27cdd26fbe4d3e75e60660f6ad5b14bb280ff3e5c6ec00161.nix;
        revNum = 0;
        sha256 = "60c7328d87f41de27cdd26fbe4d3e75e60660f6ad5b14bb280ff3e5c6ec00161";
      };
      default = "r0";
    };
  };
}