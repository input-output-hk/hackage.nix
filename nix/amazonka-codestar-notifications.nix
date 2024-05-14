{
  "2.0" = {
    sha256 = "899e1825eb039c5123f9f31beaeb1411c4be1b25c01a9d9e6d6a98ad675951b6";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-codestar-notifications-2.0-r0-4a59245ee9ae67f326b8d66bb906c920910a40fd1c183a193e137b4d6ca80f7d.nix;
        revNum = 0;
        sha256 = "4a59245ee9ae67f326b8d66bb906c920910a40fd1c183a193e137b4d6ca80f7d";
      };
      r1 = {
        nix = import ../hackage/amazonka-codestar-notifications-2.0-r1-7b555e6348b38af24977d2a938f883cd7ebc5d123301b9f33658fed8ca9b6bc2.nix;
        revNum = 1;
        sha256 = "7b555e6348b38af24977d2a938f883cd7ebc5d123301b9f33658fed8ca9b6bc2";
      };
      default = "r1";
    };
  };
}