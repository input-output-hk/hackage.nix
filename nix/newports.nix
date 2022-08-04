{
  "1.0" = {
    sha256 = "6c4e2a3a87f62c46836af48683abdb7bffdd245e3a62075b8791446d5a14cde2";
    revisions = {
      r0 = {
        nix = import ../hackage/newports-1.0-r0-724894b5a7a25662124d079e7bb8c797cff4506b214d80656f2f392725ae71eb.nix;
        revNum = 0;
        sha256 = "724894b5a7a25662124d079e7bb8c797cff4506b214d80656f2f392725ae71eb";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "8c4b0eb1bf382fae7f63f75967e6846a0266ce3e4d639310b88ba29a51c65ddd";
    revisions = {
      r0 = {
        nix = import ../hackage/newports-1.1-r0-02a4d4bb0da753fad742f2bf192d192bd7192eb7f3af7c956414237aa8514731.nix;
        revNum = 0;
        sha256 = "02a4d4bb0da753fad742f2bf192d192bd7192eb7f3af7c956414237aa8514731";
        };
      default = "r0";
      };
    };
  }