{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "prednote";
        version = "0.18.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013-2014 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://github.com/massysett/prednote";
      url = "";
      synopsis = "Build and evaluate trees of predicates";
      description = "Build and evaluate trees of predicates. For example, you might build\na predicate of the type Int -> Bool. You do this by assembling\nseveral predicates into a tree. You can then verbosely evaluate\nthis tree, showing why a particular result is reached.\n\nprednote also provides modules to test several subjects against a\ngiven predicate, and to parse infix or RPN expressions into a tree of\npredicates.";
      buildType = "Simple";
    };
    components = {
      "prednote" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rainbow)
          (hsPkgs.split)
          (hsPkgs.text)
        ];
      };
      tests = {
        "prednote-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.rainbow)
            (hsPkgs.text)
          ];
        };
      };
    };
  }