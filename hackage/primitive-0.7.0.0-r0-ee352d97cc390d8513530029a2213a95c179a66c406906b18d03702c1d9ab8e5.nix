{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "primitive"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2009-2012";
      maintainer = "libraries@haskell.org";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "https://github.com/haskell/primitive";
      url = "";
      synopsis = "Primitive memory-related operations";
      description = "This package provides various primitive memory-related operations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.fail);
        };
      tests = {
        "test-qc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.ghc-prim)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tagged)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.semigroups)
            ];
          };
        };
      };
    }