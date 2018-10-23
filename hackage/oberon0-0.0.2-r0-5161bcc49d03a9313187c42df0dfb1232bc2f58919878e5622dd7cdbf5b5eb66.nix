{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      l1 = false;
      l2 = false;
      l3 = false;
      l4 = false;
      t1 = false;
      t2 = false;
      t3 = false;
      t5 = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "oberon0";
        version = "0.0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "Marcos Viera";
      homepage = "http://www.cs.uu.nl/wiki/Center/CoCoCo";
      url = "";
      synopsis = "Oberon0 Compiler";
      description = "Oberon0 compiler (from LDTA 2011 challenge) implementation using CoCoCo";
      buildType = "Custom";
    };
    components = {
      "oberon0" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.uulib)
          (hsPkgs.uu-parsinglib)
          (hsPkgs.murder)
          (hsPkgs.AspectAG)
          (hsPkgs.HList)
        ] ++ pkgs.lib.optional (flags.t5) (hsPkgs.language-c);
      };
      exes = {
        "l1t1" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l1t2" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l1t3" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l1t5" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
            (hsPkgs.language-c)
          ];
        };
        "l2t1" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l2t2" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l2t3" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l2t5" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
            (hsPkgs.language-c)
          ];
        };
        "l3t1" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l3t2" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l3t3" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l3t5" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
            (hsPkgs.language-c)
          ];
        };
        "l4t1" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l4t2" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l4t3" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
          ];
        };
        "l4t5" = {
          depends  = [
            (hsPkgs.oberon0)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.AspectAG)
            (hsPkgs.murder)
            (hsPkgs.uulib)
            (hsPkgs.uu-parsinglib)
            (hsPkgs.HList)
            (hsPkgs.language-c)
          ];
        };
      };
    };
  }