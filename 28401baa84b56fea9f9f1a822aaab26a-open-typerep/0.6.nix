{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "open-typerep";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014-2016, Emil Axelsson";
        maintainer = "emax@chalmers.se";
        author = "Emil Axelsson";
        homepage = "https://github.com/emilaxelsson/open-typerep";
        url = "";
        synopsis = "Open type representations and dynamic types";
        description = "This package uses Data Types à la Carte to provide open type representations\nand dynamic types/coercions for open type universes.\n\nExample 1 (dynamic types):\n\n> type MyUniverse = IntType :+: BoolType\n>\n> hlist :: [Dynamic MyUniverse]\n> hlist = [toDyn True, toDyn (1 :: Int)]\n\n> *Main> hlist\n> [True,1]\n\nNote that if we were using \"Data.Dynamic\", it would just print\n\n> [<<Bool>>,<<Int>>]\n\nExample 2 (dynamically typed addition):\n\n> addDyn :: (TypeEq ts ts, PWitness Num ts ts) => Dynamic ts -> Dynamic ts -> Maybe (Dynamic ts)\n> addDyn (Dyn ta a) (Dyn tb b) = do\n>     Dict <- typeEq ta tb\n>     Dict <- pwit pNum ta\n>     return (Dyn ta (a+b))\n\n\"Data.Dynamic\" could only do this monomorphically, for one 'Num' type at a\ntime.";
        buildType = "Simple";
      };
      components = {
        "open-typerep" = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.mtl
            hsPkgs.syntactic
            hsPkgs.tagged
            hsPkgs.template-haskell
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.base-orphans;
        };
        tests = {
          "examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.open-typerep
              hsPkgs.syntactic
            ];
          };
        };
        benchmarks = {
          "dynamic-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.open-typerep
            ];
          };
        };
      };
    }