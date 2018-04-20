{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "xml-isogen";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "makeit@typeable.io";
        author = "Typeable.io contributors";
        homepage = "";
        url = "";
        synopsis = "Generate XML-isomorphic types";
        description = "TemplateHaskell generators for XML-isomorphic data types, including\ninstances for parsing and rendering. A convenient DSL to define those\ntypes.\nThis is similar to XSD but is Haskell-specific.";
        buildType = "Simple";
      };
      components = {
        xml-isogen = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.dom-parser
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.xml-conduit-writer
          ];
        };
      };
    }