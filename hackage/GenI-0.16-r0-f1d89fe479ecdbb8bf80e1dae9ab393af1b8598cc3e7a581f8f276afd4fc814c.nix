{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "GenI";
        version = "0.16";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "eric.kow@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://trac.loria.fr/~geni";
      url = "";
      synopsis = "GenI, an FB-LTAG surface realiser";
      description = "GenI, a natural language generator (more precisely, an FB-LTAG surface realiser)";
      buildType = "Custom";
    };
    components = {
      exes = {
        "geni" = {
          depends  = if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.binary)
              (hsPkgs.wx)
              (hsPkgs.wxcore)
              (hsPkgs.haskell98)
              (hsPkgs.mtl)
              (hsPkgs.parsec)
              (hsPkgs.QuickCheck)
              (hsPkgs.HUnit)
              (hsPkgs.HaXml)
              (hsPkgs.libGenI)
              (hsPkgs.process)
              (hsPkgs.directory)
              (hsPkgs.containers)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.binary)
              (hsPkgs.wx)
              (hsPkgs.wxcore)
              (hsPkgs.haskell98)
              (hsPkgs.mtl)
              (hsPkgs.parsec)
              (hsPkgs.QuickCheck)
              (hsPkgs.HUnit)
              (hsPkgs.HaXml)
              (hsPkgs.libGenI)
            ];
        };
      };
    };
  }