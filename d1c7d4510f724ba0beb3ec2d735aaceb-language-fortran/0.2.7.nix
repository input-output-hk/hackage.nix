{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-fortran";
          version = "0.2.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dagitj@gmail.com, dom.orchard@gmail.com";
        author = "Jason Dagit, Dominic Orchard, Oleg Oshmyan";
        homepage = "";
        url = "";
        synopsis = "Fortran lexer and parser, language support, and extensions.";
        description = "Lexer and parser for Fortran roughly supporting standards from FORTRAN 77 to Fortran 2003 (but with some patches and rough edges). Also includes language extension support for units-of-measure typing.";
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
          build-tools = [
            hsPkgs.alex
            hsPkgs.happy
          ];
        };
      };
    }