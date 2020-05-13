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
      identifier = { name = "hidden-char"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2017 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/hidden-char#readme";
      url = "";
      synopsis = "Provides a @getHiddenChar@ function that works on Windows, Linux and macOS";
      description = "This package provides a @getHiddenChar@ function which works reasonably consistently across the Windows, Linux and macOS platforms. @getHiddenChar@ yields a single character from the standard input device with buffering and echoing to standard output disabled.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "hidden-char-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hidden-char" or (errorHandler.buildDepError "hidden-char"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }