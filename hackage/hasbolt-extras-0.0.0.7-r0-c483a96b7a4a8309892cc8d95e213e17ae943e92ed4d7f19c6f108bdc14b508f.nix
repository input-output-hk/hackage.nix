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
      identifier = { name = "hasbolt-extras"; version = "0.0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, BIOCAD";
      maintainer = "neterebskiy@biocad.ru";
      author = "Bogdan Neterebskii, Vladimir Morozov, Sofya Kochkova, Alexander Sadovnikov";
      homepage = "https://github.com/biocad/hasbolt-extras#readme";
      url = "";
      synopsis = "Extras for hasbolt library";
      description = "Extras for hasbolt library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hasbolt" or (errorHandler.buildDepError "hasbolt"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }