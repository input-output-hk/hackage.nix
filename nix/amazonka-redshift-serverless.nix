{
  "2.0" = {
    sha256 = "598f772ae54c3e802e0cb47f7b34e39b27cb683acf9ca39faaf8df15a5179b3e";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-redshift-serverless-2.0-r0-e5fc8a65917571071d7cc1c48f48be9e1c332c8afd7f8d85e45d0be19cf5335e.nix;
        revNum = 0;
        sha256 = "e5fc8a65917571071d7cc1c48f48be9e1c332c8afd7f8d85e45d0be19cf5335e";
      };
      r1 = {
        nix = import ../hackage/amazonka-redshift-serverless-2.0-r1-cfa74240e81c929f28cb362164108fe14588fca5977df7357c1b6989a9cdd63f.nix;
        revNum = 1;
        sha256 = "cfa74240e81c929f28cb362164108fe14588fca5977df7357c1b6989a9cdd63f";
      };
      default = "r1";
    };
  };
}