{
  "0.0.0.1" = {
    sha256 = "18aaebab0a56e9876783c086df8f65629818bcabf40c01c62e626e2e34adf783";
    revisions = {
      r0 = {
        nix = import ../hackage/hw-lazy-0.0.0.1-r0-c5915d51bc465e9345fd45437fce65618fbbd7e9876ab1b27e19585cefa77fbe.nix;
        revNum = 0;
        sha256 = "c5915d51bc465e9345fd45437fce65618fbbd7e9876ab1b27e19585cefa77fbe";
      };
      r1 = {
        nix = import ../hackage/hw-lazy-0.0.0.1-r1-1e403f8fffd1296a632b2230f6baca4056d48c88028387abed277d078f10748d.nix;
        revNum = 1;
        sha256 = "1e403f8fffd1296a632b2230f6baca4056d48c88028387abed277d078f10748d";
      };
      default = "r1";
    };
  };
}