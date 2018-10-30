{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      new_type_eq = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HList";
        version = "0.4.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "oleg@pobox.com";
      author = "2004 Oleg Kiselyov (FNMOC, Monterey), Ralf Laemmel (CWI/VU, Amsterdam),\nKeean Schupke (London)";
      homepage = "";
      url = "";
      synopsis = "Heterogeneous lists";
      description = "HList provides many operations to create and manipulate\nheterogenous lists (HLists) whose length and element\ntypes are known at compile-time. HLists are used to implement\n\n* records\n* variants\n* type-indexed products (TIP)\n* type-indexed co-products (TIC)\n* keyword arguments\n\nUser code should import \"Data.HList\" or\n\"Data.HList.CommonMain\" for a slightly more limited scope";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.profunctors)
          (hsPkgs.array)
        ] ++ pkgs.lib.optional (flags.new_type_eq) (hsPkgs.base);
      };
      tests = {
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.syb)
            (hsPkgs.cmdargs)
            (hsPkgs.lens)
            (hsPkgs.HList)
            (hsPkgs.mtl)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.process)
          ];
        };
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HList)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.array)
            (hsPkgs.syb)
          ];
        };
      };
    };
  }