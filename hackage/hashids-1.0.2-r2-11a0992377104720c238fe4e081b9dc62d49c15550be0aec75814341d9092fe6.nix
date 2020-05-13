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
      identifier = { name = "hashids"; version = "1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "hildenjohannes@gmail.com";
      author = "Johannes Hildén";
      homepage = "";
      url = "";
      synopsis = "Hashids generates short, unique, non-sequential ids from numbers.";
      description = "This is a Haskell port of the Hashids library. It is typically used to encode numbers to a format suitable for appearance in places like urls. It converts numbers like 347 into strings like yr8, or a list of numbers like [27, 986] into 3kTMd. You can also decode those ids back. This is useful in bundling several parameters into one. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }