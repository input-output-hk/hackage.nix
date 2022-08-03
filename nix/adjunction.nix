{
  "0.0.0.0" = {
    sha256 = "11c44ae1c87ba1fe1c68c0582f0ba0f47ff66c92542170f8909ecb21c85403d9";
    revisions = {
      r0 = {
        nix = import ../hackage/adjunction-0.0.0.0-r0-c8eb468a6817caea86440c95e9a849d8b46af7392c498860e8bae92362086b6b.nix;
        revNum = 0;
        sha256 = "c8eb468a6817caea86440c95e9a849d8b46af7392c498860e8bae92362086b6b";
        };
      r1 = {
        nix = import ../hackage/adjunction-0.0.0.0-r1-6658f7649223556ac782384c2ac8e3128dab36a90ef807545f3984f98f7babe0.nix;
        revNum = 1;
        sha256 = "6658f7649223556ac782384c2ac8e3128dab36a90ef807545f3984f98f7babe0";
        };
      default = "r1";
      };
    };
  }