{
  "0.1.0" = {
    sha256 = "337cf398f01815d6932b2f7a120b465e765d1283e9bcd075f83e7ba9b944fcee";
    revisions = {
      r0 = {
        nix = import ../hackage/prettychart-0.1.0-r0-4fae9522351bf6ebf92a5041b2a47c24ade6243589ac7f2796b5bbed7701738e.nix;
        revNum = 0;
        sha256 = "4fae9522351bf6ebf92a5041b2a47c24ade6243589ac7f2796b5bbed7701738e";
        };
      r1 = {
        nix = import ../hackage/prettychart-0.1.0-r1-9facde42110cb45b48189e473f40d23db600205882e1789a6ebfc90efc6d4d51.nix;
        revNum = 1;
        sha256 = "9facde42110cb45b48189e473f40d23db600205882e1789a6ebfc90efc6d4d51";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "2829ef0d6e78457a5402ec9816634fc69ce2262dc2c060e0e53a93796c6cbdb1";
    revisions = {
      r0 = {
        nix = import ../hackage/prettychart-0.1.1.0-r0-8a6fce958b081eb2617f3b62298584d9828c026546e7e7e49b99d232ec11b1d1.nix;
        revNum = 0;
        sha256 = "8a6fce958b081eb2617f3b62298584d9828c026546e7e7e49b99d232ec11b1d1";
        };
      default = "r0";
      };
    };
  }