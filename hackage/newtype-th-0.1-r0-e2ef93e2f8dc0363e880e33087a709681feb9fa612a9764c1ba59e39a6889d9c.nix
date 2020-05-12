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
      identifier = { name = "newtype-th"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Michael Sloan";
      homepage = "http://github.com/mgsloan/newtype-th";
      url = "";
      synopsis = "Provides a template haskell deriver for use with Control.Newtype.";
      description = "Provides a template haskell based mechanism for\nderiving instances of djahandarie's Control.Newtype class.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."newtype" or (errorHandler.buildDepError "newtype"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }