{
  "0.91" = {
    sha256 = "b71d3f1d1f81f90515be040d57d249fb953ce285cc469c8482fe3c6e503304b9";
    revisions = {
      r0 = {
        nix = import ../hackage/regex-dfa-0.91-r0-71ca884d3949cdbe6ff57d682a8ff4ea6a9a01489ec6fb4f7196354cb2824cf6.nix;
        revNum = 0;
        sha256 = "71ca884d3949cdbe6ff57d682a8ff4ea6a9a01489ec6fb4f7196354cb2824cf6";
      };
      r1 = {
        nix = import ../hackage/regex-dfa-0.91-r1-499947cb5976b8c4798474da2c3e329a3383fd4f84a5e965244ec0e891fc2f21.nix;
        revNum = 1;
        sha256 = "499947cb5976b8c4798474da2c3e329a3383fd4f84a5e965244ec0e891fc2f21";
      };
      default = "r1";
    };
  };
}