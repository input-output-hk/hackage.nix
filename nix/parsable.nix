{
  "0.1.0.0" = {
    sha256 = "3fe26957cf3d15f6e2b55d78c659fa244abef538ca41df2d49edeeeacea12222";
    revisions = {
      r0 = {
        nix = import ../hackage/parsable-0.1.0.0-r0-0bd5fd2502372548a4d5f5a39903779b62492e84dd3180464097d4010b29dc53.nix;
        revNum = 0;
        sha256 = "0bd5fd2502372548a4d5f5a39903779b62492e84dd3180464097d4010b29dc53";
      };
      r1 = {
        nix = import ../hackage/parsable-0.1.0.0-r1-d71855acf3bccf898da3771945d8c794448f4ccc8c761679874474d9d9518ecb.nix;
        revNum = 1;
        sha256 = "d71855acf3bccf898da3771945d8c794448f4ccc8c761679874474d9d9518ecb";
      };
      r2 = {
        nix = import ../hackage/parsable-0.1.0.0-r2-e0af570700d9d3cd18518a1f84cb87b420b21b493cbcf14baa03d9c7242e1520.nix;
        revNum = 2;
        sha256 = "e0af570700d9d3cd18518a1f84cb87b420b21b493cbcf14baa03d9c7242e1520";
      };
      default = "r2";
    };
  };
}