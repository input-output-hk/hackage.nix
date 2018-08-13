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
      specVersion = "1.10";
      identifier = {
        name = "wl-pprint-annotated";
        version = "0.0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2011-2012 Edward A. Kmett, 2000 Daan Leijen";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/wl-pprint-annotated#readme";
      url = "";
      synopsis = "Wadler/Leijen pretty printer with annotations and slightly modernized API";
      description = "Wadler/Leijen pretty printer with annotations and slightly modernized API";
      buildType = "Simple";
    };
    components = {
      "wl-pprint-annotated" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "wl-pprint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.wl-pprint-annotated)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }