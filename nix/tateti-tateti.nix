{
  "0.1.0.0" = {
    sha256 = "09e6100caea4733499ab4e11ae8f7e022a05f5b5b84ab1bd5339e1616a8b7618";
    revisions = {
      r0 = {
        nix = import ../hackage/tateti-tateti-0.1.0.0-r0-5a7c86e05153dadc27e1ddc1a8d8e824db2cbc06ff548945bc0e4f846668eb7e.nix;
        revNum = 0;
        sha256 = "5a7c86e05153dadc27e1ddc1a8d8e824db2cbc06ff548945bc0e4f846668eb7e";
        };
      r1 = {
        nix = import ../hackage/tateti-tateti-0.1.0.0-r1-870ca56fb175e88f393fa461dd9b24aef304fc79b2aea031c7f37580f01638cd.nix;
        revNum = 1;
        sha256 = "870ca56fb175e88f393fa461dd9b24aef304fc79b2aea031c7f37580f01638cd";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "3cd5977a58eb22c2a17f524f918a01b101f0c42981167a7cb59b58e295bf0e58";
    revisions = {
      r0 = {
        nix = import ../hackage/tateti-tateti-0.1.0.1-r0-2341832662d25d30bf981dd50d3c977fc891a50884ca6f625a3f9126a254dba7.nix;
        revNum = 0;
        sha256 = "2341832662d25d30bf981dd50d3c977fc891a50884ca6f625a3f9126a254dba7";
        };
      default = "r0";
      };
    };
  }