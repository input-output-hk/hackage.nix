{
  "0.11" = {
    sha256 = "5eb5a49e474df1e48c38b09f5d90d78b19b0ce6ac1a807e6bdbeb2468a8db556";
    revisions = {
      r0 = {
        nix = import ../hackage/hydrogen-cli-0.11-r0-a65adac0131b632f22d53a3bd37b5be2f8be0a76bc78daab847bb9cb66668cb4.nix;
        revNum = 0;
        sha256 = "a65adac0131b632f22d53a3bd37b5be2f8be0a76bc78daab847bb9cb66668cb4";
      };
      default = "r0";
    };
  };
  "0.12" = {
    sha256 = "f26365ad47994d4413cd121d143941eb9bea795f8e3eeb6418155d7edc082203";
    revisions = {
      r0 = {
        nix = import ../hackage/hydrogen-cli-0.12-r0-235fed11e36fabcd30df041d71b8e16820a0be74554109340a9ebb16af31d46a.nix;
        revNum = 0;
        sha256 = "235fed11e36fabcd30df041d71b8e16820a0be74554109340a9ebb16af31d46a";
      };
      default = "r0";
    };
  };
  "0.14" = {
    sha256 = "2b01d1b8e94bf1f518c7cb5a83734040eb5143cbd573ff6d59e17d62d2271f0e";
    revisions = {
      r0 = {
        nix = import ../hackage/hydrogen-cli-0.14-r0-a941e9a7bb1c9120286118c4607aa99429878b65debc2778003ac6eb07d710ad.nix;
        revNum = 0;
        sha256 = "a941e9a7bb1c9120286118c4607aa99429878b65debc2778003ac6eb07d710ad";
      };
      default = "r0";
    };
  };
}