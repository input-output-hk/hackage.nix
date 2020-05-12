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
    flags = { oldtemplatehaskell = false; executables = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "pinchot"; version = "0.18.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/pinchot";
      url = "";
      synopsis = "Write grammars, not parsers";
      description = "Pinchot provides a simple language that you use to write a Haskell\nvalue that describes a context-free grammar.  Using this value, you can\nautomatically generate data types corresponding to the grammar,\nas well as an Earley parser to parse strings in that grammar.\n\nFor more documentation, see the Haddocks for the main Pinchot module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ] ++ [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "newman" = {
          depends = (pkgs.lib).optionals (flags.executables) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            ] ++ [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ]);
          buildable = if flags.executables then true else false;
          };
        };
      };
    }