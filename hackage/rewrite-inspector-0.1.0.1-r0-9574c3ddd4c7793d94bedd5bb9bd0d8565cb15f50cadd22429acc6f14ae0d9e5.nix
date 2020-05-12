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
      identifier = { name = "rewrite-inspector"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Orestis Melkonian <melkon.or@gmail.com>";
      author = "Orestis Melkonian";
      homepage = "http://github.com/omelkonian/rewrite-inspector/";
      url = "";
      synopsis = "Inspection of rewriting steps";
      description = "A terminal UI for inspecting steps taken by a rewriting process.\nUseful for the optimization phase of a compiler,\nor even evaluators of small languages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      exes = {
        "expr-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rewrite-inspector" or (errorHandler.buildDepError "rewrite-inspector"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            ];
          libs = [ (pkgs."pthread" or (errorHandler.sysDepError "pthread")) ];
          buildable = true;
          };
        };
      };
    }