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
  }