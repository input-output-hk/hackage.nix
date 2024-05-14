{
  "1.6.0" = {
    sha256 = "9d891043c48d6330f975aaa2d60a49dff10e2bb782d80f90b134cfe40ee3eeb1";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-1.6.0-r0-835e00a8ed4990f59d13ee33a17b4e64c9e0aa95759eb8ba38b8f5227fcf2626.nix;
        revNum = 0;
        sha256 = "835e00a8ed4990f59d13ee33a17b4e64c9e0aa95759eb8ba38b8f5227fcf2626";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-1.6.0-r1-108951632f627775f7523b2cb3263cbdc6c58e06c737e0c3e603ba5d25d1ddfb.nix;
        revNum = 1;
        sha256 = "108951632f627775f7523b2cb3263cbdc6c58e06c737e0c3e603ba5d25d1ddfb";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "df3b709b72e11f65e99300e36cc8cec9662cc1e01b00fc90b7af9c63d50bba6b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-1.6.1-r0-ed62ba10a1ef906643232d0b08aafea15cccaa22db2c8d03995578a9df5cb40e.nix;
        revNum = 0;
        sha256 = "ed62ba10a1ef906643232d0b08aafea15cccaa22db2c8d03995578a9df5cb40e";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-1.6.1-r1-9923a98d83205a8685c02fafdf122575391c536f7bb2a5b0f46e12428f7c920e.nix;
        revNum = 1;
        sha256 = "9923a98d83205a8685c02fafdf122575391c536f7bb2a5b0f46e12428f7c920e";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "4fdec993da19b817836dd9c33b983ed867e21e0327a23df01c746f66eb465f61";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sagemaker-2.0-r0-158c6234fa4b4ee19db99f5608c10f57e0658078f9e6d74160e12f42ddd9ef05.nix;
        revNum = 0;
        sha256 = "158c6234fa4b4ee19db99f5608c10f57e0658078f9e6d74160e12f42ddd9ef05";
      };
      r1 = {
        nix = import ../hackage/amazonka-sagemaker-2.0-r1-67ea43d0c3400077de4d0c11ce733c5ffe433c34ef17cb9cb54afa670bfd4c2e.nix;
        revNum = 1;
        sha256 = "67ea43d0c3400077de4d0c11ce733c5ffe433c34ef17cb9cb54afa670bfd4c2e";
      };
      default = "r1";
    };
  };
}