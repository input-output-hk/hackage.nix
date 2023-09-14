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
      identifier = { name = "stack-clean-old"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "2020-2023  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/stack-clean-old";
      url = "";
      synopsis = "Clean away old stack build artifacts";
      description = "A tool for removing old .stack-work/install builds and\n.stack/snapshots & programs for older ghc versions\nto recover diskspace.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stack-clean-old" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."simple-prompt" or (errorHandler.buildDepError "simple-prompt"))
            ];
          buildable = true;
          };
        };
      };
    }