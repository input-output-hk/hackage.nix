{
  "0.1.0.0" = {
    sha256 = "6a3a657f8b0b91d379cb330a6140eb4db64063d2b1b73b33b30a70a91b659b3c";
    revisions = {
      r0 = {
        nix = import ../hackage/battlenet-0.1.0.0-r0-d592293f4a45c3bb525aff517fb9ea63c3555be7de44b9225daa420e5e770ab3.nix;
        revNum = 0;
        sha256 = "d592293f4a45c3bb525aff517fb9ea63c3555be7de44b9225daa420e5e770ab3";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "e8c5050d02e2737b49f07af3487925860621db39e68fb12c5286fe4f85f9989b";
    revisions = {
      r0 = {
        nix = import ../hackage/battlenet-0.1.0.1-r0-3e5277b9aecff159ddd8f3ba54956504113fe45f652005f7e65d709938f3cc32.nix;
        revNum = 0;
        sha256 = "3e5277b9aecff159ddd8f3ba54956504113fe45f652005f7e65d709938f3cc32";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "aa775ac1f5ae6b30208d56f12580247dbaefd4dd5c8dcba192495d6a2c8af4db";
    revisions = {
      r0 = {
        nix = import ../hackage/battlenet-0.2.0.0-r0-abbd83992ad68604fe58b94651f7e101ad0839bb7a65e49d44d7221483957bad.nix;
        revNum = 0;
        sha256 = "abbd83992ad68604fe58b94651f7e101ad0839bb7a65e49d44d7221483957bad";
      };
      default = "r0";
    };
  };
}