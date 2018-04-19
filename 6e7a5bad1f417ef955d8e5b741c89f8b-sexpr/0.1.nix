{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "sexpr";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bts@evenmere.org";
        author = "Brian Sniffen";
        homepage = "";
        url = "";
        synopsis = "S-expression printer and parser";
        description = "Parser and printer for S-expressions, including Ron\nRivest's Canonical S-expressions.  These are used in\nSDSI and SPKI, and are generally useful for\ncryptographic operations over structured data.";
        buildType = "Simple";
      };
      components = {
        sexpr = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-string
            hsPkgs.pretty
          ];
        };
      };
    }