{
  "0.2" = {
    sha256 = "7d8fe9df424dae251b602073d618506f22a4f8e6bde5e0a39cdb6fdb7d065953";
    revisions = {
      r0 = {
        nix = import ../hackage/remote-json-client-0.2-r0-873ae61eb716c13c54d4fe71d4c48ed25c7862cb25d742de347a2e00cf3920d5.nix;
        revNum = 0;
        sha256 = "873ae61eb716c13c54d4fe71d4c48ed25c7862cb25d742de347a2e00cf3920d5";
        };
      r1 = {
        nix = import ../hackage/remote-json-client-0.2-r1-dcaba53dfe4c923ab531dbcd8ea45bb89bbe57a06f23b431477c505a7101085f.nix;
        revNum = 1;
        sha256 = "dcaba53dfe4c923ab531dbcd8ea45bb89bbe57a06f23b431477c505a7101085f";
        };
      default = "r1";
      };
    };
  }