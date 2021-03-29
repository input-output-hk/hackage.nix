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
      specVersion = "1.10";
      identifier = { name = "cps-except"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen";
      maintainer = "kristof@resonata.be";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "ExceptT replacement in CPS style";
      description = "ExceptT replacement in CPS style, that can faster in some circumstances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
          ];
        buildable = true;
        };
      };
    }