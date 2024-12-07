{
  "0.1" = {
    sha256 = "26b7d3c5e97ed9f533a479853cad5bace8420c2de4335a571cb11fc9d9adaf1e";
    revisions = {
      r0 = {
        nix = import ../hackage/android-activity-0.1-r0-efa857654c5d30747b7befc9b299e2f42be77127ac54dc1c630b7b74326f0e85.nix;
        revNum = 0;
        sha256 = "efa857654c5d30747b7befc9b299e2f42be77127ac54dc1c630b7b74326f0e85";
      };
      r1 = {
        nix = import ../hackage/android-activity-0.1-r1-4c553016b8470ab450ec258fcf67f6751f55ab0a0ec5a4fa0579cd33f333a047.nix;
        revNum = 1;
        sha256 = "4c553016b8470ab450ec258fcf67f6751f55ab0a0ec5a4fa0579cd33f333a047";
      };
      default = "r1";
    };
  };
}