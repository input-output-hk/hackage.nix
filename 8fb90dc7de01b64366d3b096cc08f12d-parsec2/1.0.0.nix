{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "parsec2";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Antoine Latter <aslatter@gmail.com>";
        author = "Daan Leijen <daan@cs.uu.nl>";
        homepage = "http://www.cs.uu.nl/~daan/parsec.html";
        url = "";
        synopsis = "Monadic parser combinators";
        description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well documented (on the package\nhomepage), has extensive libraries and good error messages,\nand is also fast.\n\nThis package is a maintained fork of version 2.1 of the parsec\npackage, intended to preserve its simplicity and portability.";
        buildType = "Simple";
      };
      components = {
        parsec2 = {
          depends  = [ hsPkgs.base ];
        };
      };
    }