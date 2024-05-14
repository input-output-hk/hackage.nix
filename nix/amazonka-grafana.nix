{
  "2.0" = {
    sha256 = "c8e2bc757603ef569f2b84b35168b5b1b5794bf725986100e6577de6e48a3158";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-grafana-2.0-r0-2802c82538cb75320711d7399ccd05598d1a5d0df476e0a490160c54d07efb36.nix;
        revNum = 0;
        sha256 = "2802c82538cb75320711d7399ccd05598d1a5d0df476e0a490160c54d07efb36";
      };
      r1 = {
        nix = import ../hackage/amazonka-grafana-2.0-r1-b6e46958fbd9018b59465f50e9a6e5b794b9393516946b7937266f44e059eb37.nix;
        revNum = 1;
        sha256 = "b6e46958fbd9018b59465f50e9a6e5b794b9393516946b7937266f44e059eb37";
      };
      default = "r1";
    };
  };
}