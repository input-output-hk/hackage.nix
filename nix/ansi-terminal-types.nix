{
  "0.11.5" = {
    sha256 = "bf7b230389f43105100a6d5740822598a88b38eaaf7d042de595ccf72db4fdd1";
    revisions = {
      r0 = {
        nix = import ../hackage/ansi-terminal-types-0.11.5-r0-ec04e9c7364b63f38b437e29fa2920e0792bf534f4d1b7406dd2d46723e3acae.nix;
        revNum = 0;
        sha256 = "ec04e9c7364b63f38b437e29fa2920e0792bf534f4d1b7406dd2d46723e3acae";
      };
      r1 = {
        nix = import ../hackage/ansi-terminal-types-0.11.5-r1-f78440dfd95c4509e88855ac7cc2d9566ddf956a92c1290404cac93ad1a1b00a.nix;
        revNum = 1;
        sha256 = "f78440dfd95c4509e88855ac7cc2d9566ddf956a92c1290404cac93ad1a1b00a";
      };
      default = "r1";
    };
  };
  "1.1" = {
    sha256 = "f2e5333eb78da5f4dd330fca0c81a59276cc150c625647cd20f57b7f297a5d25";
    revisions = {
      r0 = {
        nix = import ../hackage/ansi-terminal-types-1.1-r0-135f6a381afa19d53d0a3fe40b6dd47e6666c538b09e4300fbb1438759df3248.nix;
        revNum = 0;
        sha256 = "135f6a381afa19d53d0a3fe40b6dd47e6666c538b09e4300fbb1438759df3248";
      };
      default = "r0";
    };
  };
  "1.1.3" = {
    sha256 = "9fc9ce2157f1889bd99a4d22c9f1c64589590be0f797c3efe71c8fa17a11a689";
    revisions = {
      r0 = {
        nix = import ../hackage/ansi-terminal-types-1.1.3-r0-1d6061eceaf35a9ed269b81177dd4c8c60403a499526f7f68fdffa4ec7842e7f.nix;
        revNum = 0;
        sha256 = "1d6061eceaf35a9ed269b81177dd4c8c60403a499526f7f68fdffa4ec7842e7f";
      };
      default = "r0";
    };
  };
}