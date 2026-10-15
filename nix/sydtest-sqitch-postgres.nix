{
  "0.1.0.0" = {
    sha256 = "0fe64be3330816039319d8ba25a0bfe01d3a343b803fda15e5a9473ef99c7649";
    revisions = {
      r0 = {
        nix = import ../hackage/sydtest-sqitch-postgres-0.1.0.0-r0-bf6bfebe30630825229d35cb8351129cab4fc595ea5de8840cfd1445e7312a7e.nix;
        revNum = 0;
        sha256 = "bf6bfebe30630825229d35cb8351129cab4fc595ea5de8840cfd1445e7312a7e";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "068aa5a48f9df2f69517f100c4c949f6ef58f1697845d5666e2738427af7cac6";
    revisions = {
      r0 = {
        nix = import ../hackage/sydtest-sqitch-postgres-0.1.1.0-r0-64c443288548d2be0b0ea11c9db5cd24847bd81e83bde24c6ffdc7a5c1c1f3b6.nix;
        revNum = 0;
        sha256 = "64c443288548d2be0b0ea11c9db5cd24847bd81e83bde24c6ffdc7a5c1c1f3b6";
      };
      default = "r0";
    };
  };
}