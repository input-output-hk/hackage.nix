{
  "0.0.1" = {
    sha256 = "b382a7ea90fd61127782e95fa5e7ee3a17969b762bf0aac4efd15fa7c2552fc0";
    revisions = {
      r0 = {
        nix = import ../hackage/data-default-instances-unordered-containers-0.0.1-r0-97ee8f8823710331e0f9ea1e5d7b60853696434c2f1da007459d8e2814beae47.nix;
        revNum = 0;
        sha256 = "97ee8f8823710331e0f9ea1e5d7b60853696434c2f1da007459d8e2814beae47";
      };
      r1 = {
        nix = import ../hackage/data-default-instances-unordered-containers-0.0.1-r1-fc2e79e605ef4fd67f222d11f43aaed40fbc08e3ca421cd29f5982a391f90ebe.nix;
        revNum = 1;
        sha256 = "fc2e79e605ef4fd67f222d11f43aaed40fbc08e3ca421cd29f5982a391f90ebe";
      };
      default = "r1";
    };
  };
}