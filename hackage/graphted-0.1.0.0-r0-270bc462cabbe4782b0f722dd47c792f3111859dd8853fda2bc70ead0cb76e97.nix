{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "graphted";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "mayreply@aaronfriel.com";
      author = "Aaron Friel";
      homepage = "https://github.com/aaronfriel/graphted#readme";
      url = "";
      synopsis = "Graph indexed monads.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "graphted" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }