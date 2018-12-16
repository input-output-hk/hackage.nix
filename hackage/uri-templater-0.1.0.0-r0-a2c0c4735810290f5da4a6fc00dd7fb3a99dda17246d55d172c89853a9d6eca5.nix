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
      specVersion = "1.8";
      identifier = {
        name = "uri-templater";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "SaneTracker";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "http://github.com/sanetracker/uri-templater";
      url = "";
      synopsis = "Parsing & Quasiquoting for RFC 6570 URI Templates";
      description = "Parsing & Quasiquoting for RFC 6570 URI Templates";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.trifecta)
          (hsPkgs.charset)
          (hsPkgs.parsers)
          (hsPkgs.template-haskell)
          (hsPkgs.HTTP)
          (hsPkgs.dlist)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
        ];
      };
      tests = {
        "test-uri-templates" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.uri-templater)
            (hsPkgs.template-haskell)
            (hsPkgs.HUnit)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
      };
    };
  }