{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hmumps";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "2007, 2009-2010 Antoine Latter";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "";
      url = "";
      synopsis = "Interpreter for the MUMPS langugae";
      description = "Partial interpreter for the MUMPS language.\nAs this isn't nearly complete, it is mostly useful\nfor educational purposes and exploring how the interpreter\nis constructed.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hmumps" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.regex-compat)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.syb)
            (hsPkgs.text)
          ];
        };
      };
    };
  }