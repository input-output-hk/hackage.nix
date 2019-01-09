{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "xml-isogen"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "makeit@typeable.io";
      author = "Typeable.io contributors";
      homepage = "https://github.com/typeable/xml-isogen";
      url = "";
      synopsis = "Generate XML-isomorphic types";
      description = "TemplateHaskell generators for XML-isomorphic data types, including\ninstances for parsing and rendering. A convenient DSL to define those\ntypes.\nThis is similar to XSD but is Haskell-specific.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.dom-parser)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-conduit-writer)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.data-default)
            (hsPkgs.dom-parser)
            (hsPkgs.generic-arbitrary)
            (hsPkgs.hspec)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.semigroups)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-conduit-writer)
            (hsPkgs.xml-isogen)
            ];
          };
        };
      };
    }