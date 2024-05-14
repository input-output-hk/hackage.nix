{
  "2.0" = {
    sha256 = "7036ecc536a7005be6a2f8556186f5b488fbeb2a8c282220674226decedf564c";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-amplify-2.0-r0-85865da6c1ff6e2d840500b7344f4c03f7c590093eb08914ca21c354fe53cfd3.nix;
        revNum = 0;
        sha256 = "85865da6c1ff6e2d840500b7344f4c03f7c590093eb08914ca21c354fe53cfd3";
      };
      r1 = {
        nix = import ../hackage/amazonka-amplify-2.0-r1-9113ec3bd69159c17e46a6467ce4fad0e54abadf26c6fc076168440358d8a2be.nix;
        revNum = 1;
        sha256 = "9113ec3bd69159c17e46a6467ce4fad0e54abadf26c6fc076168440358d8a2be";
      };
      default = "r1";
    };
  };
}