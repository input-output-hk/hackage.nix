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
        name = "overhang";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://github.com/jship/overhang#readme";
      url = "";
      synopsis = "Hang loose with your lambdas!";
      description = "Combinators for clean, \"hanging\" lambdas.";
      buildType = "Simple";
    };
    components = {
      "overhang" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }