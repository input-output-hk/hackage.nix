{
  "0.1.0.0" = {
    sha256 = "f2d154d493e84ae9ff28d7163545ebdc2d6c8ddad833abbde09689d62ac0109d";
    revisions = {
      r0 = {
        nix = import ../hackage/postgresql-resilient-0.1.0.0-r0-6d97e90b56450163268eec80e376db1b0dd18ca87c1983f7ea5586bc9057c918.nix;
        revNum = 0;
        sha256 = "6d97e90b56450163268eec80e376db1b0dd18ca87c1983f7ea5586bc9057c918";
        };
      r1 = {
        nix = import ../hackage/postgresql-resilient-0.1.0.0-r1-42bdc044b207daa9c2345f25446f042cf333acb9645cbf494c67b423b5a65348.nix;
        revNum = 1;
        sha256 = "42bdc044b207daa9c2345f25446f042cf333acb9645cbf494c67b423b5a65348";
        };
      default = "r1";
      };
    };
  }