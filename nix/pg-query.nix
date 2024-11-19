{
  "0.0.1.0" = {
    sha256 = "80c290cec51eee2cf5a61e8f8830d7cfb4deeb54e7e304169e107efebc6334b9";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-query-0.0.1.0-r0-055ca6db71802eac7a58d120bf63f28e68fb480a5532da12cc0fb6139fe62596.nix;
        revNum = 0;
        sha256 = "055ca6db71802eac7a58d120bf63f28e68fb480a5532da12cc0fb6139fe62596";
      };
      default = "r0";
    };
  };
  "0.0.1.1" = {
    sha256 = "2cb3b0a07a3b696415e950cf0fa99573053e05be483fe95583ce3ca2eeef22a6";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-query-0.0.1.1-r0-0627223f8d2452c814b59ba9e3b7b9e83e07e9a32de14abd3937692a80672252.nix;
        revNum = 0;
        sha256 = "0627223f8d2452c814b59ba9e3b7b9e83e07e9a32de14abd3937692a80672252";
      };
      default = "r0";
    };
  };
}