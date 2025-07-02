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
      identifier = { name = "ConsoleAsk"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2025 Toma Sasaki";
      maintainer = "netst915@gmail.com";
      author = "Toma Sasaki";
      homepage = "https://github.com/t-sasaki915/ConsoleAsk#readme";
      url = "";
      synopsis = "Simple CLI user input library";
      description = "Please see the README on GitHub at <https://github.com/t-sasaki915/ConsoleAsk#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
    };
  }