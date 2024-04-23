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
      identifier = { name = "travis-pogodi"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bushevdv@gmail.com";
      author = "Dmitry Bushev";
      homepage = "https://github.com/4e6/travis-pogodi#readme";
      url = "";
      synopsis = "A better travis_wait";
      description = "An alternative implementation of Travis CI @travis_wait@ script.\nTo surpass Travis no-output timeout @travis-pogodi@ regularly prints\nmessage to stdout.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "travis-pogodi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."travis-pogodi" or (errorHandler.buildDepError "travis-pogodi"))
          ];
          buildable = true;
        };
      };
    };
  }