{
  "0.1.0.0" = {
    sha256 = "22f3b79e2355451e933a1d6e462b4f382d10c58575f2baf35e21d4d8174f60a6";
    revisions = {
      r0 = {
        nix = import ../hackage/postgres-tmp-0.1.0.0-r0-22dcec05b736da90a5d5934079137af92f578fcd166c84b9fb1de7308de3e03b.nix;
        revNum = 0;
        sha256 = "22dcec05b736da90a5d5934079137af92f578fcd166c84b9fb1de7308de3e03b";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "6d032edb06f2c477b316d6bd023f7bb7845e90b54279beba4b5919bc31b677e4";
    revisions = {
      r0 = {
        nix = import ../hackage/postgres-tmp-0.1.0.1-r0-528c35191448d2b4715aa81d1e2858466b478c754da2960efe3d0b60e941f7a3.nix;
        revNum = 0;
        sha256 = "528c35191448d2b4715aa81d1e2858466b478c754da2960efe3d0b60e941f7a3";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "06cd77ecc9256e3d4dc62a7fa8702296fe678113c925e4caf290fecfba8da5ff";
    revisions = {
      r0 = {
        nix = import ../hackage/postgres-tmp-0.2.0-r0-d88c401b9be24271484e0fa5e1f1138169cc3645801ca323c27cedd4a915c188.nix;
        revNum = 0;
        sha256 = "d88c401b9be24271484e0fa5e1f1138169cc3645801ca323c27cedd4a915c188";
      };
      default = "r0";
    };
  };
}