{
  "0.1.0.0" = {
    sha256 = "c618ba3fd7efbfc6d441cf0d3464d0816bb2cf4881925f06a088b1f363804b3c";
    revisions = {
      r0 = {
        nix = import ../hackage/hostaddress-0.1.0.0-r0-db0f101d9f189c043fb6d853b69546f2c123aa466038a69f40ada684f22a7e79.nix;
        revNum = 0;
        sha256 = "db0f101d9f189c043fb6d853b69546f2c123aa466038a69f40ada684f22a7e79";
      };
      r1 = {
        nix = import ../hackage/hostaddress-0.1.0.0-r1-1351cf427fcb77e4993995e113fd40a9d4116a93eb38c3c0c622dc60ac2ea3d7.nix;
        revNum = 1;
        sha256 = "1351cf427fcb77e4993995e113fd40a9d4116a93eb38c3c0c622dc60ac2ea3d7";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "01b21b00cba61bacb5ca6de9711e4f75abe5994751b0f72d2eef372ab430b41c";
    revisions = {
      r0 = {
        nix = import ../hackage/hostaddress-0.2.0.0-r0-c12c366d7d5d9064d5c0113d451b3adf0bf57870a63deaf40d095b38a60c4c53.nix;
        revNum = 0;
        sha256 = "c12c366d7d5d9064d5c0113d451b3adf0bf57870a63deaf40d095b38a60c4c53";
      };
      default = "r0";
    };
  };
}