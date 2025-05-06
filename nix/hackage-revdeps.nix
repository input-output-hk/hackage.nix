{
  "0.1" = {
    sha256 = "e14eb170e0cb48220a279da9050260f7bb86cb05f8747b3a0ba83026d99986e5";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-revdeps-0.1-r0-0f4ad82d1585e4e1f28fa7fef477b74cabdbad6e433baf9679ffcf039fe5e650.nix;
        revNum = 0;
        sha256 = "0f4ad82d1585e4e1f28fa7fef477b74cabdbad6e433baf9679ffcf039fe5e650";
      };
      r1 = {
        nix = import ../hackage/hackage-revdeps-0.1-r1-03a6d11e4911e0fae017802866ac2a8d865d2d9a4e767cc6e628a0c92dd519f4.nix;
        revNum = 1;
        sha256 = "03a6d11e4911e0fae017802866ac2a8d865d2d9a4e767cc6e628a0c92dd519f4";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "f2105b6d9f337294946e7b89aee9da656d08f8775b107a610a62ff66c5657332";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-revdeps-0.1.1-r0-79a4dddcb72f080e9c54349c26f258afa1dfe39439eb480d3a3004bb32a41298.nix;
        revNum = 0;
        sha256 = "79a4dddcb72f080e9c54349c26f258afa1dfe39439eb480d3a3004bb32a41298";
      };
      default = "r0";
    };
  };
}