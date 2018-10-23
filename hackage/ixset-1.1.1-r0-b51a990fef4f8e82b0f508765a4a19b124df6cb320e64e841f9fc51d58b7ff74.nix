{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ixset";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Efficient relational queries on Haskell sets.";
      description = "Create and query sets that are indexed by multiple indices.";
      buildType = "Simple";
    };
    components = {
      "ixset" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.safecopy)
          (hsPkgs.template-haskell)
          (hsPkgs.syb-with-class)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "test-ixset" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.ixset)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
          ];
        };
      };
    };
  }