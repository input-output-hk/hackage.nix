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
      identifier = { name = "servant-blaze"; version = "0.4.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "Blaze-html support for servant";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          ];
        buildable = true;
        };
      };
    }