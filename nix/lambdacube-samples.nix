{
  "0.1.0" = {
    sha256 = "7ef0088764359fa5a4b039f578ccaa28b60eb7c16c65c9eefcc4489d5719bc97";
    revisions = {
      r0 = {
        nix = import ../hackage/lambdacube-samples-0.1.0-r0-5242f7e1195e1ce7edd846a25023f3f5c13b61500bf6fb328ac37c1eda92b648.nix;
        revNum = 0;
        sha256 = "5242f7e1195e1ce7edd846a25023f3f5c13b61500bf6fb328ac37c1eda92b648";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "a1098254e7ceabf4f6ab1d8cb644211c824546748b2577e0783b20454469897e";
    revisions = {
      r0 = {
        nix = import ../hackage/lambdacube-samples-0.2.0-r0-18b6926d8cd39e1e795f376abb6302380882edc66dd29b141906ba025195fe61.nix;
        revNum = 0;
        sha256 = "18b6926d8cd39e1e795f376abb6302380882edc66dd29b141906ba025195fe61";
      };
      default = "r0";
    };
  };
}