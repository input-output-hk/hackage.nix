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
      identifier = { name = "gibbon"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016-Present Ryan Newton";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "https://iu-parfunc.github.io/gibbon/";
      url = "";
      synopsis = "A compiler for operating on serialized trees.";
      description = "Gibbon is an experimental compiler that transforms\nhigh-level functional programs to operate on serialized\ndata.\n\nTypically, programs that process tree-like data\nrepresent trees using pointer-based data structures in\nmemory (one heap object per-leaf and per-node) because such\na layout is convenient to manipulate in a high-level\nprogramming language. This is also generally distinct from\nthe representation of the data in serialized form on disk,\nwhich means that a program must perform some sort or\nmarshaling when working with serialized data.\nGibbon unifies the in-memory and serialized formats,\ntransforming recursive functions to operate directly on\nserialized data.\n\nAdditionally, while the pointer-based structure is efficient\nfor random access and shape-changing modifications,\nit can be inefficient for traversals that process most or\nall of a tree in bulk. The Gibbon project aims to explore\noptimizations of recursive tree transforms by changing how\ntrees are stored in memory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gibbon" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }