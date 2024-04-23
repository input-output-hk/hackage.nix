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
      identifier = { name = "unlit"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 (c) Pepijn Kokke";
      maintainer = "pepijn.kokke@gmail.com";
      author = "Pepijn Kokke";
      homepage = "";
      url = "";
      synopsis = "Tool to convert literate code between styles or to code.";
      description = "Tool to convert literate code between styles or to code.\nUsage:\n\n>\n> unlit\n>   -s STYLE_NAME  --source=STYLE_NAME  Source style (latex, bird, markdown)\n>   -t STYLE_NAME  --target=STYLE_NAME  Target style (latex, bird, markdown, code)\n>   -h             --help               Show help\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "unlit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }