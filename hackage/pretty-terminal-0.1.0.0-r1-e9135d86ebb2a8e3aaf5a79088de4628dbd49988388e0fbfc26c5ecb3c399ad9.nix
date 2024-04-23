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
      identifier = { name = "pretty-terminal"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Logan McPhail";
      maintainer = "logan.airnomad@gmail.com";
      author = "Logan McPhail";
      homepage = "https://github.com/loganmac/pretty-terminal#readme";
      url = "";
      synopsis = "Styling and coloring terminal output with ANSI escape sequences.";
      description = "Please see the README on Github at <https://github.com/loganmac/pretty-terminal#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }