{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "GenI";
        version = "0.16.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "eric.kow@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://trac.loria.fr/~geni";
      url = "";
      synopsis = "A natural language generator (specifically, an FB-LTAG surface realiser)";
      description = "A natural language generator (specifically, an FB-LTAG surface realiser)";
      buildType = "Custom";
    };
    components = {
      exes = {
        "geni" = {
          depends  = if _flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.binary)
              (hsPkgs.wx)
              (hsPkgs.wxcore)
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