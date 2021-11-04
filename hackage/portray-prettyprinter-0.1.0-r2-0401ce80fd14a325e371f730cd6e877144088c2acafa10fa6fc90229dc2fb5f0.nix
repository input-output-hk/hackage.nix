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
      identifier = { name = "portray-prettyprinter"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-portray#readme";
      url = "";
      synopsis = "A portray backend using the prettyprinter package.";
      description = "This provides a\n<https://hackage.haskell.org/package/prettyprinter prettyprinter> backend for\n<https://hackage.haskell.org/package/portray portray> along with derivable\n'Pretty' instances for types with 'Portray' instances.\n\nThis started out as a copy of\n<https://hackage.haskell.org/package/portray-pretty portray-pretty>, and is\nstill very similar.  However, @prettyprinter@ gives more flexibility to\ndocuments at the cost of requiring more behavior to be specified explicitly.\nAs such, some formats can be nicer with the @prettyprinter@ backend, but as\nof the initial release, this backend is less mature and hasn't been used in\npractice, so there are likely more formatting bugs.  Please do file bugs on\nthe GitHub issue tracker if you find anything that seems obviously wrong!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
          (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "PortrayPrettyprinter-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."portray" or (errorHandler.buildDepError "portray"))
            (hsPkgs."portray-diff" or (errorHandler.buildDepError "portray-diff"))
            (hsPkgs."portray-prettyprinter" or (errorHandler.buildDepError "portray-prettyprinter"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }