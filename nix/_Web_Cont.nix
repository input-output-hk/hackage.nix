{
  "0.0.0" = {
    sha256 = "9541ed875582a3ebeb23c0e44ff837f07361ded56f50e93cd630ccf7eb5cf114";
    revisions = {
      r0 = {
        nix = import ../hackage/WebCont-0.0.0-r0-ea56f43eaf15502e27a801a078d76222364053cdd977d532b7f730fd7730cefa.nix;
        revNum = 0;
        sha256 = "ea56f43eaf15502e27a801a078d76222364053cdd977d532b7f730fd7730cefa";
      };
      default = "r0";
    };
  };
  "0.0.1" = {
    sha256 = "267a3f3d016145646c414047e9fea28305aefda2150d7018e028433cc18f25d3";
    revisions = {
      r0 = {
        nix = import ../hackage/WebCont-0.0.1-r0-048065f039602ae28d8dcaa78fa0107fb62c1cfc8af789fe6c10fe8af00ff2e3.nix;
        revNum = 0;
        sha256 = "048065f039602ae28d8dcaa78fa0107fb62c1cfc8af789fe6c10fe8af00ff2e3";
      };
      default = "r0";
    };
  };
}