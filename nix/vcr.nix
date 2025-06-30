{
  "0.0.0" = {
    sha256 = "ae63eff69c1625a0ee4ef8641c241e3c3bdcd0a771c80b29580842c96c967940";
    revisions = {
      r0 = {
        nix = import ../hackage/vcr-0.0.0-r0-98be0844c89751f7d478dc2f13af1047f9bbc6207b7e588eb91be82fce67cfe8.nix;
        revNum = 0;
        sha256 = "98be0844c89751f7d478dc2f13af1047f9bbc6207b7e588eb91be82fce67cfe8";
      };
      default = "r0";
    };
  };
  "0.1.0" = {
    sha256 = "387b7f451594cf87dc289d1db86a378564c16b1a949e5ff8d6f447826ab8cfe8";
    revisions = {
      r0 = {
        nix = import ../hackage/vcr-0.1.0-r0-e7c09d3c886a04feecaa305b36cbdd52eebf47b996dd1aee98c35896580bcd6e.nix;
        revNum = 0;
        sha256 = "e7c09d3c886a04feecaa305b36cbdd52eebf47b996dd1aee98c35896580bcd6e";
      };
      default = "r0";
    };
  };
}