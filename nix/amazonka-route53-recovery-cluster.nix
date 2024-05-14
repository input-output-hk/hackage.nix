{
  "2.0" = {
    sha256 = "751faa57a25f4b61f342145f7a6d8c7539f2e04e07d7c8e51744cb53f3293916";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-route53-recovery-cluster-2.0-r0-ca869278ebd6f90177ffde71bf53f445e9c84b10308ef07abc598dd1ca922d57.nix;
        revNum = 0;
        sha256 = "ca869278ebd6f90177ffde71bf53f445e9c84b10308ef07abc598dd1ca922d57";
      };
      r1 = {
        nix = import ../hackage/amazonka-route53-recovery-cluster-2.0-r1-d62f221dc89079f0765c7d4daccccced877c0290c6b420f89d7c036813b6daf0.nix;
        revNum = 1;
        sha256 = "d62f221dc89079f0765c7d4daccccced877c0290c6b420f89d7c036813b6daf0";
      };
      default = "r1";
    };
  };
}