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
      specVersion = "1.18";
      identifier = { name = "percent-format"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/percent-format#readme";
      url = "";
      synopsis = "simple printf-style string formatting";
      description = "The @Text.PercentFormat@ library provides printf-style string formatting.  It\nprovides a @%@ operator (as in Ruby or Python) and uses the old\nC-printf-style format you know and love.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "number" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."percent-format" or (errorHandler.buildDepError "percent-format"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          ];
          buildable = true;
        };
        "scientific" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."percent-format" or (errorHandler.buildDepError "percent-format"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          ];
          buildable = true;
        };
        "prop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."percent-format" or (errorHandler.buildDepError "percent-format"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          ];
          buildable = true;
        };
        "quotient" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."percent-format" or (errorHandler.buildDepError "percent-format"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          ];
          buildable = true;
        };
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."percent-format" or (errorHandler.buildDepError "percent-format"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."percent-format" or (errorHandler.buildDepError "percent-format"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          ];
          buildable = true;
        };
      };
    };
  }