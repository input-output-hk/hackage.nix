{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "language-css";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "";
        url = "";
        synopsis = "CSS 2.1 syntax";
        description = "library for building and pretty printing CSS 2.1 code";
        buildType = "Simple";
      };
      components = {
        language-css = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.pretty
          ];
        };
      };
    }