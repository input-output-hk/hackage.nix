{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "prednote";
        version = "0.26.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013-2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/prednote";
      url = "";
      synopsis = "Evaluate and display trees of predicates";
      description = "Build and evaluate trees of predicates. For example, you might build\na predicate of the type Int -> Bool. You do this by assembling\nseveral predicates into a tree. You can then verbosely evaluate\nthis tree, showing why a particular result is reached.\n\nprednote also provides modules to test several subjects against a\ngiven predicate, and to parse infix or RPN expressions into a tree of\npredicates.\n\ntests are packaged separately in the prednote-tests package.";
      buildType = "Simple";
    };
    components = {
      "prednote" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.rainbow)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.containers)
        ];
      };
    };
  }