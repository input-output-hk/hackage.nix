{
  "1.6.0" = {
    sha256 = "2ff01bf7962db34db77bcbba13f64cb199b7d04c731d8055ec083360cdaf243f";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-comprehend-1.6.0-r0-cc9b82dee1c7d31593c0e17ed8779bc26a652e86a73f7d157dd364f8ad687fab.nix;
        revNum = 0;
        sha256 = "cc9b82dee1c7d31593c0e17ed8779bc26a652e86a73f7d157dd364f8ad687fab";
      };
      r1 = {
        nix = import ../hackage/amazonka-comprehend-1.6.0-r1-06a669c13c6319c50c7961e93098749affc622aa533940df5f0091667c98c9e9.nix;
        revNum = 1;
        sha256 = "06a669c13c6319c50c7961e93098749affc622aa533940df5f0091667c98c9e9";
      };
      default = "r1";
    };
  };
  "1.6.1" = {
    sha256 = "2d70335d1faeeaaeba51eef0d8cf41f4049bf83e4be0f755f1812b6fb178378a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-comprehend-1.6.1-r0-e47b428df1050f2b099d4b27db0acfe2ca4d6e3c929fb8647c97b7d43ed8ae64.nix;
        revNum = 0;
        sha256 = "e47b428df1050f2b099d4b27db0acfe2ca4d6e3c929fb8647c97b7d43ed8ae64";
      };
      r1 = {
        nix = import ../hackage/amazonka-comprehend-1.6.1-r1-982a3d47b188edfdf2db638b1105fb830aebd5cac18c59bf4c3afeb1d757bf92.nix;
        revNum = 1;
        sha256 = "982a3d47b188edfdf2db638b1105fb830aebd5cac18c59bf4c3afeb1d757bf92";
      };
      default = "r1";
    };
  };
  "2.0" = {
    sha256 = "d58d89e403fe86e1a727171020618e19108e5d7ae6597ec69539ecaf363183d2";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-comprehend-2.0-r0-b316cbdf4ddb9b19e743281698807d2a04f6410dd9de487e93f1b373231ca323.nix;
        revNum = 0;
        sha256 = "b316cbdf4ddb9b19e743281698807d2a04f6410dd9de487e93f1b373231ca323";
      };
      r1 = {
        nix = import ../hackage/amazonka-comprehend-2.0-r1-3d759f2bc961cb0ab95944948cfbce94ef3048f11c1d4df762eae84fa32955d6.nix;
        revNum = 1;
        sha256 = "3d759f2bc961cb0ab95944948cfbce94ef3048f11c1d4df762eae84fa32955d6";
      };
      default = "r1";
    };
  };
}