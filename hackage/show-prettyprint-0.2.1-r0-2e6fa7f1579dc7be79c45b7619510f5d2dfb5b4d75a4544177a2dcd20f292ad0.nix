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
        name = "show-prettyprint";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "David Luposchainsky, 2016";
      maintainer = "David Luposchainsky <dluposchainsky (λ) google>";
      author = "David Luposchainsky <dluposchainsky (λ) google>";
      homepage = "https://github.com/quchen/show-prettyprint#readme";
      url = "";
      synopsis = "Robust prettyprinter for output of auto-generated Show\ninstances";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.trifecta)
          (hsPkgs.prettyprinter)
          (hsPkgs.ansi-wl-pprint)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }