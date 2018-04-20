{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "pattern-arrows";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "(c) Phil Freeman 2013";
        maintainer = "Phil Freeman <paf31@cantab.net>";
        author = "Phil Freeman <paf31@cantab.net>";
        homepage = "http://blog.functorial.com/posts/2013-10-27-Pretty-Printing-Arrows.html";
        url = "";
        synopsis = "Arrows for Pretty Printing";
        description = "A library for generating concise pretty printers based on precedence rules.";
        buildType = "Simple";
      };
      components = {
        pattern-arrows = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }