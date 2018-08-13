{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "uri-templater";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "http://github.com/iand675/uri-templater";
      url = "";
      synopsis = "Parsing & Quasiquoting for RFC 6570 URI Templates";
      description = "Parsing & Quasiquoting for RFC 6570 URI Templates";
      buildType = "Simple";
    };
    components = {
      "uri-templater" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.trifecta)
          (hsPkgs.charset)
          (hsPkgs.parsers)
          (hsPkgs.template-haskell)
          (hsPkgs.HTTP)
          (hsPkgs.dlist)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-uri-templates" = {
          depends  = [
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