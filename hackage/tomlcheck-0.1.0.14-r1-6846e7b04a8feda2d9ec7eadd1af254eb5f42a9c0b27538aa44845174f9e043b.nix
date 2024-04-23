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
    flags = { optimize = false; native = false; development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "tomlcheck"; version = "0.1.0.14"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/tomlcheck#readme";
      url = "";
      synopsis = "Command-line tool to check syntax of TOML files";
      description = "This is a command-line wrapper around htoml-megaparsec.\nIt is intended to be used as a syntax checker that can be\ncalled by your text editor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."htoml-megaparsec" or (errorHandler.buildDepError "htoml-megaparsec"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "tomlcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tomlcheck" or (errorHandler.buildDepError "tomlcheck"))
          ];
          buildable = true;
        };
      };
    };
  }