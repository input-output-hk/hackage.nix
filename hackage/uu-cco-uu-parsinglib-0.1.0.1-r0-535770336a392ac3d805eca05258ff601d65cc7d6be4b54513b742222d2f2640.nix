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
      specVersion = "1.6";
      identifier = { name = "uu-cco-uu-parsinglib"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 Utrecht University";
      maintainer = "Atze Dijkstra <atze@uu.nl>";
      author = "Atze Dijkstra <atze@uu.nl>";
      homepage = "https://github.com/UU-ComputerScience/uu-cco";
      url = "";
      synopsis = "Utilities for compiler construction: Feedback wrapper around parser in uu-parsinglib";
      description = "A small utility library accompanying the course on\nCompiler Construction (INFOMCCO) at Utrecht Univerity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."uu-cco" or (errorHandler.buildDepError "uu-cco"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          ];
        buildable = true;
        };
      };
    }