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
      specVersion = "2.2";
      identifier = { name = "servant-queryparam-server"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen 2020";
      maintainer = "Danila Danko <https://github.com/deemp>";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "Server support for servant-queryparam-core.";
      description = "Server support for [servant-queryparam-core](https://hackage.haskell.org/package/servant-queryparam-core).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-queryparam-core" or (errorHandler.buildDepError "servant-queryparam-core"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }