{
  "0.1.0.0" = {
    sha256 = "046f5102464c65dab6f13c3d7859c5df207659189f78580dfd83deeffefff1d8";
    revisions = {
      r0 = {
        nix = import ../hackage/odid-0.1.0.0-r0-626eeda0c065d06c7fe60675b87f817b79f6162f1ce5cc20ca4da2b1cc1ca2fa.nix;
        revNum = 0;
        sha256 = "626eeda0c065d06c7fe60675b87f817b79f6162f1ce5cc20ca4da2b1cc1ca2fa";
      };
      default = "r0";
    };
  };
  "1.0.0.0" = {
    sha256 = "3b24347657dd380a64d3d9f6c3158ba48b7620e17e4ad10c453c7d3b9608d4f4";
    revisions = {
      r0 = {
        nix = import ../hackage/odid-1.0.0.0-r0-e285ca4a472e0cfdbc9d825318e15ab61fc38fb8989ac0e2778e1bfaeb691a60.nix;
        revNum = 0;
        sha256 = "e285ca4a472e0cfdbc9d825318e15ab61fc38fb8989ac0e2778e1bfaeb691a60";
      };
      default = "r0";
    };
  };
}