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
      identifier = { name = "flexiwrap-smallcheck"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Iain Alexander <ia@stryx.demon.co.uk>";
      author = "Iain Alexander <ia@stryx.demon.co.uk>";
      homepage = "";
      url = "";
      synopsis = "SmallCheck (Serial) instances for flexiwrap";
      description = "SmallCheck (Serial) instances for flexiwrap";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-type" or (errorHandler.buildDepError "data-type"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."flexiwrap" or (errorHandler.buildDepError "flexiwrap"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "6.6.1") (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"));
        buildable = true;
        };
      };
    }