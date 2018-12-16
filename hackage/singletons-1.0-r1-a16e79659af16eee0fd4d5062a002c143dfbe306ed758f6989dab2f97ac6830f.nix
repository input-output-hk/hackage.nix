{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "singletons";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
      homepage = "http://www.cis.upenn.edu/~eir/packages/singletons";
      url = "";
      synopsis = "A framework for generating singleton types";
      description = "This library generates singleton types, promoted functions, and singleton\nfunctions using Template Haskell. It is useful for programmers who wish\nto use dependently typed programming techniques. The library was originally\npresented in /Dependently Typed Programming with Singletons/, published\nat the Haskell Symposium, 2012.\n(<http://www.cis.upenn.edu/~eir/papers/2012/singletons/paper.pdf>)\nThe Haddock documentation does not build with the Haddock distributed with\nGHC 7.6.x, but it does build with 7.8.2. Please see links from the project\nhomepage to find the built documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.th-desugar)
        ];
      };
      tests = {
        "singletons-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.constraints)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }