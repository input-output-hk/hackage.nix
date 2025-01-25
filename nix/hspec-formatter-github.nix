{
  "0.1.0.0" = {
    sha256 = "eb21feae440314ff9e137218cc58d9e9dfa0092ebaed9931022b9e08db674981";
    revisions = {
      r0 = {
        nix = import ../hackage/hspec-formatter-github-0.1.0.0-r0-0f425706145c5d9fccee39662a38abe68fd61567b39f8dae655a3f598b53b0d3.nix;
        revNum = 0;
        sha256 = "0f425706145c5d9fccee39662a38abe68fd61567b39f8dae655a3f598b53b0d3";
      };
      r1 = {
        nix = import ../hackage/hspec-formatter-github-0.1.0.0-r1-95eb947a2c36d7b5ae3432512a77cd34168b4f7e6fd1ca565386a0917032f1e3.nix;
        revNum = 1;
        sha256 = "95eb947a2c36d7b5ae3432512a77cd34168b4f7e6fd1ca565386a0917032f1e3";
      };
      default = "r1";
    };
  };
}