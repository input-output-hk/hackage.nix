{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { lattices14 = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sign";
        version = "0.4.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Arithmetic over signs and sets of signs";
      description = "Arithmetic over signs (i.e. -, 0, +) and sets of signs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
        ] ++ (if flags.lattices14
          then [
            (hsPkgs.lattices)
            (hsPkgs.universe-base)
          ]
          else [ (hsPkgs.lattices) ]);
      };
      tests = {
        "TestSign" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.lattices)
            (hsPkgs.sign)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ] ++ pkgs.lib.optional (flags.lattices14) (hsPkgs.universe-base);
        };
      };
    };
  }