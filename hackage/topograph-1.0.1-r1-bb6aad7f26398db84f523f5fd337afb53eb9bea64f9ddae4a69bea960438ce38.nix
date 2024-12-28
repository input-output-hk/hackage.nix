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
      specVersion = "2.2";
      identifier = { name = "topograph"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/topograph";
      url = "";
      synopsis = "Directed acyclic graphs.";
      description = "Directed acyclic graphs can be sorted topographically.\nExistence of topographic ordering allows writing many graph algorithms efficiently.\nAnd many graphs, e.g. most dependency graphs are acyclic!\n\nThere are some algorithms built-in: dfs, transpose, transitive closure,\ntransitive reduction...\nSome algorithms even become not-so-hard to implement, like a longest path!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }