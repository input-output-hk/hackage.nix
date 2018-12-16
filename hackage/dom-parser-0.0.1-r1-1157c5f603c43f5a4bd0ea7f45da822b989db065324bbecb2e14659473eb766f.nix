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
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Antorica";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uimanov";
      homepage = "https://github.com/s9gf4ult/dom-parser";
      url = "";
      synopsis = "Simple monad for parsing DOM";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.xml-conduit)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.dom-parser)
            (hsPkgs.hspec)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.xml-conduit)
          ];
        };
      };
    };
  }