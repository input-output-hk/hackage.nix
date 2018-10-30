{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskeem";
        version = "0.7.7";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      author = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      homepage = "http://www.korgwal.com/haskeem/";
      url = "";
      synopsis = "A small scheme interpreter";
      description = "This is a moderately complete small scheme interpreter.\nIt implements most of R6RS, with the exception of call/cc.\nIt has a macro system, although not R6RS hygienic macros.\nIt is also not necessarily fully tail-recursive; so it's\nnot industrial-strength. For playing with or learning\nscheme, it should be pretty good.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haskeem" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.haskell98)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.haskeline)
          ];
        };
      };
    };
  }