{
  "0.0.0.10" = {
    sha256 = "cb39562f0e1fd428f072e2f2e2440f6ac6c2ff8077e767d2fced0e402f575f66";
    revisions = {
      r0 = {
        nix = import ../hackage/teleport-0.0.0.10-r0-eb3acf062b84d80af416958283c0cae286ee4056fe10b10d0303f193be72f51a.nix;
        revNum = 0;
        sha256 = "eb3acf062b84d80af416958283c0cae286ee4056fe10b10d0303f193be72f51a";
      };
      default = "r0";
    };
  };
  "0.0.0.9" = {
    sha256 = "0bcfa3013d4cae37d3b092c9893492874db2847f704933fb5a6205950cbd9835";
    revisions = {
      r0 = {
        nix = import ../hackage/teleport-0.0.0.9-r0-bb87074f7cb1526f90bd9e628bff560295987ad775edf0be4be5b640eb5cfcdf.nix;
        revNum = 0;
        sha256 = "bb87074f7cb1526f90bd9e628bff560295987ad775edf0be4be5b640eb5cfcdf";
      };
      default = "r0";
    };
  };
}