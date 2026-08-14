{
  "0.1.0.0" = {
    sha256 = "74c205146c9bf7e1d2ae1c1844670d87245b455dc228e7c8525a87c3581cbe90";
    revisions = {
      r0 = {
        nix = import ../hackage/hgg-0.1.0.0-r0-e324a9daeedb3ee17e3365922e59d83fcc400dfae9346f495ff2799a3b360955.nix;
        revNum = 0;
        sha256 = "e324a9daeedb3ee17e3365922e59d83fcc400dfae9346f495ff2799a3b360955";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "a9d491059ae22addb5ce53d71bc87d2bce9cd2d8b2342081467b2afb92359a37";
    revisions = {
      r0 = {
        nix = import ../hackage/hgg-0.2.0.0-r0-685a595f18419cf1c3cdeec0ff923b1f2cc6be7f3b41a09402ef97f7ad0342a7.nix;
        revNum = 0;
        sha256 = "685a595f18419cf1c3cdeec0ff923b1f2cc6be7f3b41a09402ef97f7ad0342a7";
      };
      default = "r0";
    };
  };
}