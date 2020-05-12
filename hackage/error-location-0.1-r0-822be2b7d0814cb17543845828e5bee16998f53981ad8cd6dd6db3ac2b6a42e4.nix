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
      identifier = { name = "error-location"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greg@gregweber.info";
      author = "Greg Weber";
      homepage = "https://github.com/gregwebs/ErrorLocation.hs";
      url = "";
      synopsis = "error functions that show file location information";
      description = "";
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