{
  "0.1" = {
    sha256 = "fad240ddaace483c7a6b404ddabf19b08b271bce8c583e24b11b26ebf9420a4d";
    revisions = {
      r0 = {
        nix = import ../hackage/grafana-0.1-r0-0b44e05c667249683f27a021117d20a309b63812225102521cf656f77fb07eec.nix;
        revNum = 0;
        sha256 = "0b44e05c667249683f27a021117d20a309b63812225102521cf656f77fb07eec";
        };
      default = "r0";
      };
    };
  "0.2" = {
    sha256 = "85d81cb6b27c405516b94f2acdedf8090f6f345ce700a26e2a64d4b676140f2b";
    revisions = {
      r0 = {
        nix = import ../hackage/grafana-0.2-r0-d340fc688366eccce4a538a21846b20cd37f2584699571c804d65c83383ea970.nix;
        revNum = 0;
        sha256 = "d340fc688366eccce4a538a21846b20cd37f2584699571c804d65c83383ea970";
        };
      default = "r0";
      };
    };
  }