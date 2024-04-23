{
  "0.1.0.0" = {
    sha256 = "fbb8b0971e2cde746b50ff3613c48bc23e6f80aacaefe2474d5ec70c03ddb922";
    revisions = {
      r0 = {
        nix = import ../hackage/pvar-0.1.0.0-r0-11520d4847880d894e7e717192c6137494b7017aaca637e6711a59827c28e854.nix;
        revNum = 0;
        sha256 = "11520d4847880d894e7e717192c6137494b7017aaca637e6711a59827c28e854";
      };
      r1 = {
        nix = import ../hackage/pvar-0.1.0.0-r1-491904918b300c441e89a43bc9b3d2aa34b1b9f913e873731e64d67c079611f8.nix;
        revNum = 1;
        sha256 = "491904918b300c441e89a43bc9b3d2aa34b1b9f913e873731e64d67c079611f8";
      };
      r2 = {
        nix = import ../hackage/pvar-0.1.0.0-r2-e028c7792e94c4648a83558e67174866cb6e44b3e2f93ec531b27364c62086a0.nix;
        revNum = 2;
        sha256 = "e028c7792e94c4648a83558e67174866cb6e44b3e2f93ec531b27364c62086a0";
      };
      default = "r2";
    };
  };
  "0.1.1.0" = {
    sha256 = "468037bf632ae06522bce8579de8858e58e9ab668f6da3d2410ea6fa97d8ecbb";
    revisions = {
      r0 = {
        nix = import ../hackage/pvar-0.1.1.0-r0-4715f603c0e87dbccdd49e1958554f8771f7730c8a61561552690b929223aa8f.nix;
        revNum = 0;
        sha256 = "4715f603c0e87dbccdd49e1958554f8771f7730c8a61561552690b929223aa8f";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "d078cb8ffd4ad40e3207069cf851081369bf79881d7fc86acec22c327b6277a0";
    revisions = {
      r0 = {
        nix = import ../hackage/pvar-0.2.0.0-r0-786ab43a3e7921d0086e723e620120543200c57b53f5e0f6ef1cb570c94a9144.nix;
        revNum = 0;
        sha256 = "786ab43a3e7921d0086e723e620120543200c57b53f5e0f6ef1cb570c94a9144";
      };
      default = "r0";
    };
  };
  "1.0.0.0" = {
    sha256 = "96a683b532ea7ccda7813e09147a9da65578e9385d8001607dadd19fd0e24838";
    revisions = {
      r0 = {
        nix = import ../hackage/pvar-1.0.0.0-r0-73733aed99b6fc2424f532b71659cafeb28bb1c74b3ee4d01cb7142e87cebdce.nix;
        revNum = 0;
        sha256 = "73733aed99b6fc2424f532b71659cafeb28bb1c74b3ee4d01cb7142e87cebdce";
      };
      r1 = {
        nix = import ../hackage/pvar-1.0.0.0-r1-3d4a6855b0960baee78f6956f082eb8aa1cede52d2955b7faef186d1133f7964.nix;
        revNum = 1;
        sha256 = "3d4a6855b0960baee78f6956f082eb8aa1cede52d2955b7faef186d1133f7964";
      };
      default = "r1";
    };
  };
}