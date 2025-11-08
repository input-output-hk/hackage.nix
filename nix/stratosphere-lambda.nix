{
  "1.0.0" = {
    sha256 = "1820be957c7fb0d1278b802a6bba1f2305364b877f719c3809eb3d4d20990028";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-lambda-1.0.0-r0-074c1052297387e35a6c91d725cd67dd55f228d880b9e5b4301dd0c420177888.nix;
        revNum = 0;
        sha256 = "074c1052297387e35a6c91d725cd67dd55f228d880b9e5b4301dd0c420177888";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "fa53dd23d77b9167eac424bf856d5add2b89d7e221dd13ba0a04e24862bf57c8";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-lambda-1.0.1-r0-88ac05166ee476e5418a5c624e8125e894657a1d6d34eb765ea9064482cd49f3.nix;
        revNum = 0;
        sha256 = "88ac05166ee476e5418a5c624e8125e894657a1d6d34eb765ea9064482cd49f3";
      };
      default = "r0";
    };
  };
}