{
  "0.2" = {
    sha256 = "55f592acc96e89d8001472438f76f8ba12838e974ddb32b897c84427f314033c";
    revisions = {
      r0 = {
        nix = import ../hackage/zmcat-0.2-r0-2493cc630c96086fc9febabb30fc86ec826b5beb8f8cc1c161465dce003cd0c8.nix;
        revNum = 0;
        sha256 = "2493cc630c96086fc9febabb30fc86ec826b5beb8f8cc1c161465dce003cd0c8";
      };
      default = "r0";
    };
  };
  "0.3" = {
    sha256 = "37b2584351d92b5db563915b19824bff8bd55704e6c027eea2ab489e9075e551";
    revisions = {
      r0 = {
        nix = import ../hackage/zmcat-0.3-r0-294047cfdec3c2bcb4d4c427a6c0c02ee9d3eb065c2c08933e0384ae99cf3144.nix;
        revNum = 0;
        sha256 = "294047cfdec3c2bcb4d4c427a6c0c02ee9d3eb065c2c08933e0384ae99cf3144";
      };
      default = "r0";
    };
  };
}