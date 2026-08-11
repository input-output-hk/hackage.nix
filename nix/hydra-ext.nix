{
  "0.17.0" = {
    sha256 = "68a23f94474acdd108e859dfa41435a2d71009c05a1501b3bcca6aaa3ee2adb8";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-ext-0.17.0-r0-e3842681790cae5f56dd40137189aa42e815036d627b6db57d8ffa53e6f88776.nix;
        revNum = 0;
        sha256 = "e3842681790cae5f56dd40137189aa42e815036d627b6db57d8ffa53e6f88776";
      };
      default = "r0";
    };
  };
  "0.17.4" = {
    sha256 = "97a17bbe26d807aa5b265109e1dd2b7f2b61f8d3579806d1b466a7c508b5bbf4";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-ext-0.17.4-r0-b732fc25fbf05c0b1ae260a75689cc6cf451e350ec8c375be54277cf3b19c1d4.nix;
        revNum = 0;
        sha256 = "b732fc25fbf05c0b1ae260a75689cc6cf451e350ec8c375be54277cf3b19c1d4";
      };
      default = "r0";
    };
  };
}