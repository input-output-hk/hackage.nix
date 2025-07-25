{
  "0.1.0.0" = {
    sha256 = "e936bc9fc0de144bbaa449f2fed3ea553efb7abfab64bc85875b1ba7771e736b";
    revisions = {
      r0 = {
        nix = import ../hackage/hsec-sync-0.1.0.0-r0-37f74be6610599f899c8133020a85d416ba82d2793470c59b769117dd2c324c6.nix;
        revNum = 0;
        sha256 = "37f74be6610599f899c8133020a85d416ba82d2793470c59b769117dd2c324c6";
      };
      r1 = {
        nix = import ../hackage/hsec-sync-0.1.0.0-r1-3513a2e613971c354ae84034986996e971df16036266d59f090d88037d7164f6.nix;
        revNum = 1;
        sha256 = "3513a2e613971c354ae84034986996e971df16036266d59f090d88037d7164f6";
      };
      default = "r1";
    };
  };
  "0.2.0.2" = {
    sha256 = "9284b393ba3b06f9ea1590f7dbb3c955251bea8f8c8763ee1f6fc66b92569e35";
    revisions = {
      r0 = {
        nix = import ../hackage/hsec-sync-0.2.0.2-r0-b08fbb8611d3c613dd154c4b12835812c4cab9fad8642abfcc56d0b475e3e3ba.nix;
        revNum = 0;
        sha256 = "b08fbb8611d3c613dd154c4b12835812c4cab9fad8642abfcc56d0b475e3e3ba";
      };
      default = "r0";
    };
  };
}