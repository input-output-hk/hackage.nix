{
  "1.0.0" = {
    sha256 = "d4441cc33d7791e7192390b8c70cd0087213843d3289d903cf9f6e5662e1601f";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-effectful-1.0.0-r0-cd4c9eb9088585373ffaa2fcde82c817d60164bc4277c93abd9180b2cb7fc6c1.nix;
        revNum = 0;
        sha256 = "cd4c9eb9088585373ffaa2fcde82c817d60164bc4277c93abd9180b2cb7fc6c1";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "64519fcd8fce96cdfdcb5b963a8153f6947ef100e51da9b82a59d246e1b8abc8";
    revisions = {
      r0 = {
        nix = import ../hackage/warp-effectful-1.1.0-r0-5733430737264d1214e700c7656cef35c91cb5e7703c2853e5c5b83faaad9409.nix;
        revNum = 0;
        sha256 = "5733430737264d1214e700c7656cef35c91cb5e7703c2853e5c5b83faaad9409";
      };
      default = "r0";
    };
  };
}