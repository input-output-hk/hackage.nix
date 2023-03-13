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
      specVersion = "1.12";
      identifier = { name = "portray-prettyprinter"; version = "0.2.1"; };
      license = "Apache-2.0";
      copyright = "2021 Google LLC; 2022 Andrew Pritchard";
      maintainer = "Andrew Pritchard <awpritchard@gmail.com>";
      author = "Andrew Pritchard <awpritchard@gmail.com>";
      homepage = "https://github.com/awpr/portray#readme";
      url = "";
      synopsis = "Portray backend for prettyprinter";
      description = "This provides a\n<https://hackage.haskell.org/package/prettyprinter prettyprinter> backend for\n<https://hackage.haskell.org/package/portray portray> along with derivable\n'Pretty' instances for types with 'Portray' instances.\n\nThis backend has largely superseded the original\n<https://hackage.haskell.org/package/portray-pretty portray-pretty>.  Because\n@prettyprinter@ gives more flexibility to documents at the cost of requiring\nmore behavior to be specified explicitly, some formats are nicer with this\nbackend, configurable syntax highlighting is supported, and unicode escaping\nis configurable.  However, as this backend is still newer, there are\npotentially more unnoticed formatting bugs.  Please do file bugs on the\nGitHub issue tracker if you find anything that seems obviously wrong!\n\nTry using 'pp' as the print function in GHCi:\n@:set -interactive-print=Data.Portray.Prettyprinter.pp@!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
          (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "PortrayPrettyprinter-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
            (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
            (hsPkgs."portray-prettyprinter" or (errorHandler.buildDepError "portray-prettyprinter"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }