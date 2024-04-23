{
  "0.1.0.0" = {
    sha256 = "a85c71bfb04c1f8ee8131e9327cff179172d638301512fa30a6307c4df363e25";
    revisions = {
      r0 = {
        nix = import ../hackage/gedcom-0.1.0.0-r0-c019e5585c1afeee03c6eb205c3477578e3814ed07856e4d3a27fc2dd8400b24.nix;
        revNum = 0;
        sha256 = "c019e5585c1afeee03c6eb205c3477578e3814ed07856e4d3a27fc2dd8400b24";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "fe50554ce0cf527f3a83199efc6ca7cda3c4cc75bbd31144e4fe645e25cd92c3";
    revisions = {
      r0 = {
        nix = import ../hackage/gedcom-0.2.0.0-r0-8d06a9fd897a5e4633968567d7e93ab37a2de313c1b06232d52ed3aacbd745ff.nix;
        revNum = 0;
        sha256 = "8d06a9fd897a5e4633968567d7e93ab37a2de313c1b06232d52ed3aacbd745ff";
      };
      default = "r0";
    };
  };
}