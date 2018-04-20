{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-fortran";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dagitj@gmail.com, dom.orchard@gmail.com";
        author = "Jason Dagit, Dominic Orchard, Oleg Oshmyan";
        homepage = "";
        url = "";
        synopsis = "Fortran lexer and parser, language support, and extensions.";
        description = "Lexer and parser for Fortran roughly supporting standards from\nFORTRAN 77 to Fortran 2003 (but with some patches and rough\nedges). Also includes language extension support for\nunits-of-measure typing.";
        buildType = "Simple";
      };
      components = {
        language-fortran = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.haskell-src
            hsPkgs.parsec
            hsPkgs.array
          ];
        };
      };
    }