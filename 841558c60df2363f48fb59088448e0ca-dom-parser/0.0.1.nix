{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dom-parser";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "makeit@typeable.io";
        author = "Typeable.io contributors";
        homepage = "https://github.com/s9gf4ult/dom-parser";
        url = "";
        synopsis = "Simple monadic DOM parser";
        description = "";
        buildType = "Simple";
      };
      components = {
        "dom-parser" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.shakespeare
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.xml-conduit
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.dom-parser
              hsPkgs.hspec
              hsPkgs.shakespeare
              hsPkgs.text
              hsPkgs.xml-conduit
            ];
          };
        };
      };
    }