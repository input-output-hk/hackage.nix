{
  "0.1.0.0" = {
    sha256 = "15a8981f297cb2b786ce780d57e02673008007d43683e38ce761aab2e0857215";
    revisions = {
      r0 = {
        nix = import ../hackage/graql-0.1.0.0-r0-97fc2c12eceb568f50e195ad1ef8469cc0f154217b880f910898da884a9bfbf3.nix;
        revNum = 0;
        sha256 = "97fc2c12eceb568f50e195ad1ef8469cc0f154217b880f910898da884a9bfbf3";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "2173fcd327ea273c8ef30077c3e875242a6fe3b9ae19af07accc78671ec75800";
    revisions = {
      r0 = {
        nix = import ../hackage/graql-0.1.1-r0-10561f2f86775b1fa04e6ee32fc48cd5d3fc69135782cd530a7921bd717313a2.nix;
        revNum = 0;
        sha256 = "10561f2f86775b1fa04e6ee32fc48cd5d3fc69135782cd530a7921bd717313a2";
      };
      default = "r0";
    };
  };
}