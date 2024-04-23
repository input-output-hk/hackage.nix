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
      identifier = { name = "hwk"; version = "0.4"; };
      license = "MIT";
      copyright = "2016-2017 Lukas Martinelli,\n2020 Jens Petersen";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Lukas Martinelli";
      homepage = "https://github.com/juhp/hwk";
      url = "";
      synopsis = "Simple cli text processing with Haskell functions";
      description = "A commandline tool for text processing with Haskell functions,\nwhich can used in addition to awk, grep, sed, etc.\nIt applies the function supplied on the commandline using hint\nto lines of standard input and outputs the results.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hwk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
          ];
          buildable = true;
        };
      };
    };
  }