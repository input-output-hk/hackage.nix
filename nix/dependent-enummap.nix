{
  "0.1.0.0" = {
    sha256 = "96dc2cfa5a947887df49bc8cc7383dd43d9403ffe9a95bcd4d55c278a30717c4";
    revisions = {
      r0 = {
        nix = import ../hackage/dependent-enummap-0.1.0.0-r0-d338d5cadc4241de0f1b4e8dd1df6065b6535c14770ddfef851aba1aa5672eaa.nix;
        revNum = 0;
        sha256 = "d338d5cadc4241de0f1b4e8dd1df6065b6535c14770ddfef851aba1aa5672eaa";
      };
      r1 = {
        nix = import ../hackage/dependent-enummap-0.1.0.0-r1-af7384420f0aa5b75a7fef729a2df7c45f5245956c2d3f3a2e549489e9ee0da9.nix;
        revNum = 1;
        sha256 = "af7384420f0aa5b75a7fef729a2df7c45f5245956c2d3f3a2e549489e9ee0da9";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "dbade6f3f371f628146003c35fefde46fd48de7819a7b725f839f7dab38c3c48";
    revisions = {
      r0 = {
        nix = import ../hackage/dependent-enummap-0.2.0.0-r0-232a98c953e50637c4d324e12849113b3b7fb7b58aa7db7e7eaad7b68fa932f4.nix;
        revNum = 0;
        sha256 = "232a98c953e50637c4d324e12849113b3b7fb7b58aa7db7e7eaad7b68fa932f4";
      };
      default = "r0";
    };
  };
}