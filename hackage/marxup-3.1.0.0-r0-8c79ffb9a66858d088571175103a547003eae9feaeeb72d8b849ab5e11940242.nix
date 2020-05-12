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
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "marxup"; version = "3.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Markup language preprocessor for Haskell";
      description = "Markup syntax preprocessor for Haskell. Steals ideas from the Scribble project (in Scheme).\nThe package also provides a DSL to output Latex seamlessly from MarXup output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."labeled-tree" or (errorHandler.buildDepError "labeled-tree"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."lp-diagrams" or (errorHandler.buildDepError "lp-diagrams"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "marxup" = {
          depends = [
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."parsek" or (errorHandler.buildDepError "parsek"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            ];
          buildable = true;
          };
        "marxup-example" = {
          depends = [
            (hsPkgs."marxup" or (errorHandler.buildDepError "marxup"))
            (hsPkgs."lp-diagrams" or (errorHandler.buildDepError "lp-diagrams"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }