{
  "0.1.0.0" = {
    sha256 = "d4540f0b43a2edc75df007fd657400af23bc6edc94391b45d304f3c185c79f9d";
    revisions = {
      r0 = {
        nix = import ../hackage/conduit-aeson-0.1.0.0-r0-4b4dba9250f0cf1178741398f01c908d2d6855982ae76bddbace8bb012412e20.nix;
        revNum = 0;
        sha256 = "4b4dba9250f0cf1178741398f01c908d2d6855982ae76bddbace8bb012412e20";
      };
      r1 = {
        nix = import ../hackage/conduit-aeson-0.1.0.0-r1-9f39bb8f33a4cc4e5b86f19531a99331d7f2cb72940ac30eab9569c7017c8782.nix;
        revNum = 1;
        sha256 = "9f39bb8f33a4cc4e5b86f19531a99331d7f2cb72940ac30eab9569c7017c8782";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "f69b6e983d5d56f1527797a5030cc1c5e9a38e21d429845af2f38639491355c9";
    revisions = {
      r0 = {
        nix = import ../hackage/conduit-aeson-0.1.0.1-r0-f7654b917de284a2e295da52acdf23307b1d555d81b83ccac9551a80deb9f711.nix;
        revNum = 0;
        sha256 = "f7654b917de284a2e295da52acdf23307b1d555d81b83ccac9551a80deb9f711";
      };
      r1 = {
        nix = import ../hackage/conduit-aeson-0.1.0.1-r1-d91c27c197260efa6cc3fe09aff2a86568daf4b4ba080afe4f7e6894726f8c53.nix;
        revNum = 1;
        sha256 = "d91c27c197260efa6cc3fe09aff2a86568daf4b4ba080afe4f7e6894726f8c53";
      };
      default = "r1";
    };
  };
}