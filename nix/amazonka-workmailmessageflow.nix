{
  "2.0" = {
    sha256 = "fc1a26d1ea43f6a4cf22974b258c80724010deb7b4e12e073ebd73cd44d1187b";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-workmailmessageflow-2.0-r0-46dcad46f0c2c4c739c1d07f28d12aba4be6a5f83ae3d29c7fc67523db37ad3a.nix;
        revNum = 0;
        sha256 = "46dcad46f0c2c4c739c1d07f28d12aba4be6a5f83ae3d29c7fc67523db37ad3a";
      };
      r1 = {
        nix = import ../hackage/amazonka-workmailmessageflow-2.0-r1-fba3c415187d49f9ac80b135567727a8c154f6e9cf17d0aa8e411656505b7d82.nix;
        revNum = 1;
        sha256 = "fba3c415187d49f9ac80b135567727a8c154f6e9cf17d0aa8e411656505b7d82";
      };
      default = "r1";
    };
  };
}