{
  "0.1.0.0" = {
    sha256 = "7711b58774cc73e7cb7a3fe126c45a6833618fa9c697ed3a7cb71cc345fcdf4c";
    revisions = {
      r0 = {
        nix = import ../hackage/tasty-json-0.1.0.0-r0-a06fdadd650ff9f729319daf69f57eacf91f389a851983d07fe1354d58851061.nix;
        revNum = 0;
        sha256 = "a06fdadd650ff9f729319daf69f57eacf91f389a851983d07fe1354d58851061";
        };
      r1 = {
        nix = import ../hackage/tasty-json-0.1.0.0-r1-b975931bf5ab7b54ee856382b52a03acae68c8328f03c4beb565104a1a3d624a.nix;
        revNum = 1;
        sha256 = "b975931bf5ab7b54ee856382b52a03acae68c8328f03c4beb565104a1a3d624a";
        };
      default = "r1";
      };
    };
  }