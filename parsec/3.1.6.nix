{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "parsec";
          version = "3.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Antoine Latter <aslatter@gmail.com>";
        author = "Daan Leijen <daan@microsoft.com>, Paolo Martini <paolo@nemail.it>";
        homepage = "http://www.cs.uu.nl/~daan/parsec.html";
        url = "";
        synopsis = "Monadic parser combinators";
        description = "Parsec is designed from scratch as an industrial-strength parser\nlibrary.  It is simple, safe, well documented (on the package\nhomepage), has extensive libraries and good error messages,\nand is also fast.  It is defined as a monad transformer that can be\nstacked on arbitrary monads, and it is also parametric in the\ninput stream type.";
        buildType = "Simple";
      };
      components = {
        parsec = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.text
          ] ++ [ hsPkgs.base ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }