{
  "1.0.0.0" = {
    sha256 = "b4d1b83224f6c2e6fd6509b91ab12a431dcb6767a3f93464d21c1058a610e6ff";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-parquet-1.0.0.0-r0-dd39932f874f88db21926edbd859ff5dfb2ea02b993a5b56d9b9e26fd13eb835.nix;
        revNum = 0;
        sha256 = "dd39932f874f88db21926edbd859ff5dfb2ea02b993a5b56d9b9e26fd13eb835";
      };
      default = "r0";
    };
  };
  "1.0.1.0" = {
    sha256 = "5a624622136b4e9bc61342c283466afb8eae23cc39b39ef6e1254f4f210a1ce6";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-parquet-1.0.1.0-r0-100f470a4c7bf9086d959bb7e1013b8756e93932acd011dc5dc660f92c5a8d44.nix;
        revNum = 0;
        sha256 = "100f470a4c7bf9086d959bb7e1013b8756e93932acd011dc5dc660f92c5a8d44";
      };
      r1 = {
        nix = import ../hackage/dataframe-parquet-1.0.1.0-r1-5066d9ae9794f671727f5282ab027359c9b51b9dbfa58bc354d02efa7abc31ba.nix;
        revNum = 1;
        sha256 = "5066d9ae9794f671727f5282ab027359c9b51b9dbfa58bc354d02efa7abc31ba";
      };
      default = "r1";
    };
  };
  "1.0.1.1" = {
    sha256 = "e7268224b7d6d364c2733fc3836ab2fb1fd62b5e1f7a5587c93d60f1e0820ba2";
    revisions = {
      r0 = {
        nix = import ../hackage/dataframe-parquet-1.0.1.1-r0-de4debfcd36f08715eb9cd59cdb86b72cc097939c967ab81e3e36610807d3068.nix;
        revNum = 0;
        sha256 = "de4debfcd36f08715eb9cd59cdb86b72cc097939c967ab81e3e36610807d3068";
      };
      default = "r0";
    };
  };
}