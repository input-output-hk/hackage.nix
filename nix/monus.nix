{
  "0.1.0.0" = {
    sha256 = "808cf71e71d76b3502718137cc7899f0e877786d20f2ab1a8c8a57ea647a5bc9";
    revisions = {
      r0 = {
        nix = import ../hackage/monus-0.1.0.0-r0-e9a809c911a60523017d7375c61b30a503eebd662af9da6bf4cb2c9a992a550d.nix;
        revNum = 0;
        sha256 = "e9a809c911a60523017d7375c61b30a503eebd662af9da6bf4cb2c9a992a550d";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "893f23aabd8655dd244450ee873c8c00c3d3911d028c5688937919bee3c0dfc7";
    revisions = {
      r0 = {
        nix = import ../hackage/monus-0.2.0.0-r0-0a85c3758395cefca5caf596dcb223589d28e19a31690b17d0eed7be3240d4f0.nix;
        revNum = 0;
        sha256 = "0a85c3758395cefca5caf596dcb223589d28e19a31690b17d0eed7be3240d4f0";
      };
      default = "r0";
    };
  };
}