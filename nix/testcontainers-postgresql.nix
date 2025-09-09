{
  "0.0.1" = {
    sha256 = "60c6def0fa1f7aa6b6a3949169cd004965381aeede23cd9a64257cd7d505c943";
    revisions = {
      r0 = {
        nix = import ../hackage/testcontainers-postgresql-0.0.1-r0-28cc1fdae317d76396d188abff7cd3be32549a68c216fee2ca91f7ee7746a362.nix;
        revNum = 0;
        sha256 = "28cc1fdae317d76396d188abff7cd3be32549a68c216fee2ca91f7ee7746a362";
      };
      default = "r0";
    };
  };
  "0.0.1.1" = {
    sha256 = "9c22860d04fe7e653a853072009ad3394a4025a53d76083190d672603b65cc7f";
    revisions = {
      r0 = {
        nix = import ../hackage/testcontainers-postgresql-0.0.1.1-r0-8784b0bcd4457bafd31db43e8a4a698c0b71a1c16f3871b172bb1ee7f842b47d.nix;
        revNum = 0;
        sha256 = "8784b0bcd4457bafd31db43e8a4a698c0b71a1c16f3871b172bb1ee7f842b47d";
      };
      default = "r0";
    };
  };
}