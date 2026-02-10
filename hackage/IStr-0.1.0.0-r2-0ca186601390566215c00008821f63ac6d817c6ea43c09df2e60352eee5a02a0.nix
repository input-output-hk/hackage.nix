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
      specVersion = "3.0";
      identifier = { name = "IStr"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "galen.sprout@gmail.com";
      author = "lazyLambda";
      homepage = "";
      url = "";
      synopsis = "String Interpolation of Haskell expressions using #{expr} syntax ";
      description = "Easy string interpolation of arbitrary haskell expressions.\n\nThis is done using a custom class similar to Show except that with IStr except that it doesn't escape instances of IsString.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
        ];
        buildable = true;
      };
    };
  }