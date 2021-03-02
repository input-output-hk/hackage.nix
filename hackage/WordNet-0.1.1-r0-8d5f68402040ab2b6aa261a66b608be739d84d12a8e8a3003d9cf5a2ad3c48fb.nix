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
      specVersion = "1.0";
      identifier = { name = "WordNet"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Rabkin <max.rabkin@gmail.com>";
      author = "Hal Daume III <me@hal3.name>";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to the WordNet database";
      description = "A pure-Haskell interface to the WordNet lexical database of English. Depends on the WordNet database, but not on the WordNet source code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }