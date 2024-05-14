{
  "2.0" = {
    sha256 = "9658e8b9793e2f4c7f32da7d45e415560d9e5d575604fe5fe62b598dd1b08b2a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-license-manager-user-subscriptions-2.0-r0-9432f507e2827576ac5abfa33fe127431fec2dfcb772760225c7b03341a5e1f0.nix;
        revNum = 0;
        sha256 = "9432f507e2827576ac5abfa33fe127431fec2dfcb772760225c7b03341a5e1f0";
      };
      r1 = {
        nix = import ../hackage/amazonka-license-manager-user-subscriptions-2.0-r1-59b8af043602230e1a8221a8a06eda7f648778328d207a8ecdf7566879abdf35.nix;
        revNum = 1;
        sha256 = "59b8af043602230e1a8221a8a06eda7f648778328d207a8ecdf7566879abdf35";
      };
      default = "r1";
    };
  };
}