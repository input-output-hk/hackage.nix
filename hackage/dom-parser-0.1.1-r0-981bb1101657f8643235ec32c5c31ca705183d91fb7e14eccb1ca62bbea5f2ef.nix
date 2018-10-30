{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dom-parser";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "makeit@typeable.io";
      author = "Typeable.io contributors";
      homepage = "";
      url = "";
      synopsis = "Simple monadic DOM parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.open-union)
          (hsPkgs.semigroups)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.type-fun)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-lens)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.dom-parser)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.semigroups)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.xml-conduit)
          ];
        };
      };
    };
  }