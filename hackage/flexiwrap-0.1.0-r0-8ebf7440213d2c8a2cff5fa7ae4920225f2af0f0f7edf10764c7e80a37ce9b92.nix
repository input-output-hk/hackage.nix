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
      identifier = { name = "flexiwrap"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Iain Alexander <ia@stryx.demon.co.uk>";
      author = "Iain Alexander <ia@stryx.demon.co.uk>";
      homepage = "";
      url = "";
      synopsis = "Flexible wrappers";
      description = "MPTC/FD framework using multi-purpose wrappers\nto direct instance selection";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-type" or (errorHandler.buildDepError "data-type"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "6.6.1") (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"));
        buildable = true;
        };
      };
    }