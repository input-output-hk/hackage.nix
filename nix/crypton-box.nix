{
  "1.1.0" = {
    sha256 = "362db1882938e144550efddca3032a8f7f152622907e2ad641d8576a52b0e683";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-box-1.1.0-r0-21fc9d0edb7d2989fe27453592931502bccc15f8b0bb13061be15fd92e1ba830.nix;
        revNum = 0;
        sha256 = "21fc9d0edb7d2989fe27453592931502bccc15f8b0bb13061be15fd92e1ba830";
      };
      default = "r0";
    };
  };
  "1.2.0" = {
    sha256 = "ccef07a95482e10c9adb476255683d52a71c656c73c1c1988067b184695cf7c5";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-box-1.2.0-r0-552436a557e12271b4f8666a00c26b576c5f6a0f7b6d9a6ac44971c8e712179f.nix;
        revNum = 0;
        sha256 = "552436a557e12271b4f8666a00c26b576c5f6a0f7b6d9a6ac44971c8e712179f";
      };
      default = "r0";
    };
  };
}