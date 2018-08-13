{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rlglue";
        version = "0.2.2.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rhofer@alumni.cmu.edu";
      author = "Richard Alex Hofer";
      homepage = "";
      url = "";
      synopsis = "A Haskell codec for RL-Glue.";
      description = "A codec to allow Haskell programs to interact with reinforcement learning\nprograms using the RL_Glue protocol.";
      buildType = "Simple";
    };
    components = {
      "rlglue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network-simple)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.parsec)
          (hsPkgs.network)
        ];
      };
      exes = {
        "skeleton-experiment" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-simple)
            (hsPkgs.transformers)
            (hsPkgs.exceptions)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.network)
          ];
        };
        "skeleton-environment" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-simple)
            (hsPkgs.transformers)
            (hsPkgs.exceptions)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.network)
          ];
        };
        "skeleton-agent" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-simple)
            (hsPkgs.transformers)
            (hsPkgs.exceptions)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.random)
            (hsPkgs.network)
          ];
        };
      };
    };
  }