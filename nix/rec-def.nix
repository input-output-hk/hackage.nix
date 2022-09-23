{
  "0.1" = {
    sha256 = "729f733336af85bd14735afa194b77710e8854b591d3be859e0d2d966e2121ce";
    revisions = {
      r0 = {
        nix = import ../hackage/rec-def-0.1-r0-592f33156c2eda3134e334711d3deca53f954e8e52d47cbea1a55ca4fd499795.nix;
        revNum = 0;
        sha256 = "592f33156c2eda3134e334711d3deca53f954e8e52d47cbea1a55ca4fd499795";
        };
      r1 = {
        nix = import ../hackage/rec-def-0.1-r1-afa4bd8ad4f8b0d6adcca32bb7836734cc4c8e04ef7f251f5c0f3f23bc942ae0.nix;
        revNum = 1;
        sha256 = "afa4bd8ad4f8b0d6adcca32bb7836734cc4c8e04ef7f251f5c0f3f23bc942ae0";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "487ef01713181732d5b2e05c5a00b9ce531149ae170db1be6dfa01a0b941dc35";
    revisions = {
      r0 = {
        nix = import ../hackage/rec-def-0.2-r0-4fb538263dec2f066fabfe00085b541857ba135e5882e780187b6010dae20703.nix;
        revNum = 0;
        sha256 = "4fb538263dec2f066fabfe00085b541857ba135e5882e780187b6010dae20703";
        };
      default = "r0";
      };
    };
  }