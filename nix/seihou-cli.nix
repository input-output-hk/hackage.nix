{
  "0.4.0.0" = {
    sha256 = "820708ce78dce7592b158bdd1e744dae8025b7b5b54dbad15b23c60a6b200ae0";
    revisions = {
      r0 = {
        nix = import ../hackage/seihou-cli-0.4.0.0-r0-3efc04593be3109006b0c52ca829654f299b6488e041c60dc9a49e7e1a92d76c.nix;
        revNum = 0;
        sha256 = "3efc04593be3109006b0c52ca829654f299b6488e041c60dc9a49e7e1a92d76c";
      };
      default = "r0";
    };
  };
  "0.5.0.0" = {
    sha256 = "d51ef274077bc5b548dbc0bd1e66c63b6bb1c984b990e2df75c0185c9f740612";
    revisions = {
      r0 = {
        nix = import ../hackage/seihou-cli-0.5.0.0-r0-f19656cf36324c49cf43bca74ecb8ce7ce968489193ab03cc4128ccf49897692.nix;
        revNum = 0;
        sha256 = "f19656cf36324c49cf43bca74ecb8ce7ce968489193ab03cc4128ccf49897692";
      };
      default = "r0";
    };
  };
}