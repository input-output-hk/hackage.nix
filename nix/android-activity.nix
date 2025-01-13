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
  "0.2.0.0" = {
    sha256 = "c32d2d244e0ddf32c226af96b585a37dba41a5f49340df41d104fe92f00d08c9";
    revisions = {
      r0 = {
        nix = import ../hackage/android-activity-0.2.0.0-r0-5be55f7dcba28c890a57ccd8eaedd17173ec0f10c0131d0377056a20ca845d8e.nix;
        revNum = 0;
        sha256 = "5be55f7dcba28c890a57ccd8eaedd17173ec0f10c0131d0377056a20ca845d8e";
      };
      default = "r0";
    };
  };
}