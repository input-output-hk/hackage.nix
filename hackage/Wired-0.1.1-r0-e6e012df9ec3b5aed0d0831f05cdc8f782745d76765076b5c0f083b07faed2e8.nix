{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Wired"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Emil Axelsson <emax@chalmers.se>";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Emil Axelsson <emax@chalmers.se>";
      homepage = "http://www.cs.chalmers.se/~emax/wired/";
      url = "";
      synopsis = "Wire-aware hardware description";
      description = "An extension to the hardware description library Lava\ntargeting (not exclusively) semi-custom VLSI design. A\nparticular aim of Wired is to give the designer more\ncontrol over the routing wires' effects on performance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chalmers-lava2000" or (errorHandler.buildDepError "chalmers-lava2000"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }