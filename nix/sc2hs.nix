{
  "0.1.0.0" = {
    sha256 = "a72a6a4e3e0dc93faaad46ac4a2a45d0af738e58b8c6f5ebf7c4e76a88bfe605";
    revisions = {
      r0 = {
        nix = import ../hackage/sc2hs-0.1.0.0-r0-1c5bfef1628237e9fa3c0dd6cb8b1405a49d1ee5ae4d406e3790479d5c262b15.nix;
        revNum = 0;
        sha256 = "1c5bfef1628237e9fa3c0dd6cb8b1405a49d1ee5ae4d406e3790479d5c262b15";
      };
      r1 = {
        nix = import ../hackage/sc2hs-0.1.0.0-r1-90831f71401cefb10abac72ebf05642838f912ef7bfa8cb82e0d330f9562d46c.nix;
        revNum = 1;
        sha256 = "90831f71401cefb10abac72ebf05642838f912ef7bfa8cb82e0d330f9562d46c";
      };
      default = "r1";
    };
  };
}