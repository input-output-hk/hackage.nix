{
  "2.0" = {
    sha256 = "d685c77babaec7b09dbbad9dc94684e3124ec98d8cc4965772f10786ee43a092";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-ssm-contacts-2.0-r0-524cd8044612a520eadda984fa8b150b9f697e9109da0a1657837467b9d150d0.nix;
        revNum = 0;
        sha256 = "524cd8044612a520eadda984fa8b150b9f697e9109da0a1657837467b9d150d0";
      };
      r1 = {
        nix = import ../hackage/amazonka-ssm-contacts-2.0-r1-ba5ad9bc3dfcacc9cf7440e9f461e78dd0804b9a9be066212456e8defc5bf5e7.nix;
        revNum = 1;
        sha256 = "ba5ad9bc3dfcacc9cf7440e9f461e78dd0804b9a9be066212456e8defc5bf5e7";
      };
      default = "r1";
    };
  };
}