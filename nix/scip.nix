{
  "0.8.0" = {
    sha256 = "37e98a3ac2087e638c124e3a9a820df730a9e527dd6e6e6c6bed28774373587d";
    revisions = {
      r0 = {
        nix = import ../hackage/scip-0.8.0-r0-36e3bbf5588a144590c1ad991254799112cec95d8790cc155a766ed57b8b39cd.nix;
        revNum = 0;
        sha256 = "36e3bbf5588a144590c1ad991254799112cec95d8790cc155a766ed57b8b39cd";
      };
      default = "r0";
    };
  };
  "0.8.1" = {
    sha256 = "2bf02201168f641c2908e3d49a7772eb0d46f3b733cb467a5ab50a0357474309";
    revisions = {
      r0 = {
        nix = import ../hackage/scip-0.8.1-r0-b45b1ce82c17185532c86b89e6ee9423549d61efdba47bf03cec9ad9f817a7f9.nix;
        revNum = 0;
        sha256 = "b45b1ce82c17185532c86b89e6ee9423549d61efdba47bf03cec9ad9f817a7f9";
      };
      default = "r0";
    };
  };
}