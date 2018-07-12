{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "parsec1";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Christian Maeder <Christian.Maeder@dfki.de>";
        author = "Daan Leijen <daan@cs.uu.nl>";
        homepage = "http://www.cs.uu.nl/~daan/parsec.html";
        url = "";
        synopsis = "Monadic parser combinators";
        description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well documented (on the package\nhomepage), has extensive libraries and good error messages,\nand is also fast.\n\nThis package is the core haskell98 part of the parsec2\npackage, intended to preserve its simplicity and portability.";
        buildType = "Simple";
      };
      components = {
        "parsec1" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }