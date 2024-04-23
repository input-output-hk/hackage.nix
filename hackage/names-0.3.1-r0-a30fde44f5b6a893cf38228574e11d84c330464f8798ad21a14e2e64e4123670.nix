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
      specVersion = "1.6";
      identifier = { name = "names"; version = "0.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Type level names.";
      description = "Type level names.\n\n[@v0.1@] Initial.\n\n[@v0.2@] Show Instances added. Restricted to latin1.\n\n[@v0.2.1@] Infix operator fixities set.\n\n[@v0.2.2@] Merge \"Data.Name\" and \"Data.Name.TH\".\n\n[@v0.2.3@] Added basic Documentation.\n\n[@v0.3@] Reintroduced Unicode for names.\nAdded @Name@ type class.\nTH is not used internally anymore.\n\n[@v0.3.1@] Name resolution enhanced via Template Haskell,\nadded @names@ macro.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }