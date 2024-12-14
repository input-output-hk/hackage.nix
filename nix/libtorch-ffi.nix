{
  "2.0.0.0" = {
    sha256 = "9d8ac7d31d314e9a981ca2b40de36928972ff47c6d07746fbfbee926c0295869";
    revisions = {
      r0 = {
        nix = import ../hackage/libtorch-ffi-2.0.0.0-r0-0e3e2dd9bfb909a52eb75548cfaaee327ef3d3f919d269f1ef86a3219407b479.nix;
        revNum = 0;
        sha256 = "0e3e2dd9bfb909a52eb75548cfaaee327ef3d3f919d269f1ef86a3219407b479";
      };
      r1 = {
        nix = import ../hackage/libtorch-ffi-2.0.0.0-r1-18ca77ec38fdc26838a99046c019741f7a7cf7d04d32d2e60fa931e1cee6ddf5.nix;
        revNum = 1;
        sha256 = "18ca77ec38fdc26838a99046c019741f7a7cf7d04d32d2e60fa931e1cee6ddf5";
      };
      default = "r1";
    };
  };
  "2.0.0.1" = {
    sha256 = "186c0e2321ea85b28eb978be6da9d2432042bcce841b46b6e0fa253ec08fcee2";
    revisions = {
      r0 = {
        nix = import ../hackage/libtorch-ffi-2.0.0.1-r0-6e18f9f1d79f4fb77372a64f934f7e8a8ad83e8e56efbf59a7a1cea9e2f31c8c.nix;
        revNum = 0;
        sha256 = "6e18f9f1d79f4fb77372a64f934f7e8a8ad83e8e56efbf59a7a1cea9e2f31c8c";
      };
      default = "r0";
    };
  };
}