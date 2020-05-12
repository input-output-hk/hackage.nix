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
      identifier = { name = "singleton-typelits"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "https://github.com/mniip/singleton-typelits";
      url = "";
      synopsis = "Singletons and induction over GHC TypeLits";
      description = "Singletons and induction schemes over 'GHC.TypeLits.Nat'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }