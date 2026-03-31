{
  "0.2.3" = {
    sha256 = "9e5e45f9b5115ef9a55f292e28d9d7910bd8e4c8f7f92ae3b434ec76d5ff71ce";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-conduit-0.2.3-r0-31f44243b42f344c65be6cd2c39c07994d9186d19d15988656620d1de85aca37.nix;
        revNum = 0;
        sha256 = "31f44243b42f344c65be6cd2c39c07994d9186d19d15988656620d1de85aca37";
      };
      r1 = {
        nix = import ../hackage/crypton-conduit-0.2.3-r1-c827109c49fff648f4db8c704b7d0790b376be545387efdd10fc648ad69bfb33.nix;
        revNum = 1;
        sha256 = "c827109c49fff648f4db8c704b7d0790b376be545387efdd10fc648ad69bfb33";
      };
      default = "r1";
    };
  };
  "0.3.0" = {
    sha256 = "d8e233efc4f2a96574e0275cf0f4190e7b8a6fac7e8cd0ce85b324af9504273e";
    revisions = {
      r0 = {
        nix = import ../hackage/crypton-conduit-0.3.0-r0-20946683890fa9fd2519c6c734039d413888ccd9b64692db9aa390388ea58921.nix;
        revNum = 0;
        sha256 = "20946683890fa9fd2519c6c734039d413888ccd9b64692db9aa390388ea58921";
      };
      default = "r0";
    };
  };
}