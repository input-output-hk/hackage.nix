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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "WordNet"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Rabkin <max.rabkin@gmail.com>";
      author = "Hal Daume III";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to the WordNet database";
      description = "A pure-Haskell interface to the WordNet lexical database of English.\nDepends on the WordNet database, but not on the WordNet source code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
        buildable = true;
        };
      };
    }