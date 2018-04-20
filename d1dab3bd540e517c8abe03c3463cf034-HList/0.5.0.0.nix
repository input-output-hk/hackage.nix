{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      new_type_eq = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HList";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "oleg@pobox.com";
        author = "2004 Oleg Kiselyov (FNMOC, Monterey), Ralf Laemmel (CWI/VU, Amsterdam),\nKeean Schupke (London)";
        homepage = "";
        url = "";
        synopsis = "Heterogeneous lists";
        description = "HList provides many operations to create and manipulate\nheterogenous lists (HLists) whose length and element\ntypes are known at compile-time. HLists are used to implement\n\n* records\n\n* variants\n\n* type-indexed products (TIP)\n\n* type-indexed co-products (TIC)\n\n* keyword arguments\n\nUser code should import \"Data.HList\" or\n\"Data.HList.CommonMain\" for a slightly more limited scope";
        buildType = "Simple";
      };
      components = {
        HList = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-orphans
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.ghc-prim
            hsPkgs.mtl
            hsPkgs.tagged
            hsPkgs.profunctors
            hsPkgs.array
          ] ++ pkgs.lib.optional _flags.new_type_eq hsPkgs.base;
        };
        tests = {
          examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec-expectations
              hsPkgs.process
              hsPkgs.syb
              hsPkgs.cmdargs
              hsPkgs.lens
              hsPkgs.HList
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.semigroups
              hsPkgs.template-haskell
            ];
          };
          doctests = {
            depends  = pkgs.lib.optionals (compiler.isGhc && compiler.isGhc) [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.process
            ];
          };
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.HList
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
              hsPkgs.array
              hsPkgs.syb
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.semigroups;
          };
        };
      };
    }