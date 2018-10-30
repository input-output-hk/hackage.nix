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
        name = "web-routes-th";
        version = "0.22.6.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "https://github.com/happstack/web-routes-th";
      url = "";
      synopsis = "Support for deriving PathInfo using Template Haskell";
      description = "web-routes is a portable library for type-safe URLs. This module adds\nsupport for creating the URL parsers/printers automatically using\nTemplate Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.web-routes)
        ];
      };
      tests = {
        "Test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.web-routes)
            (hsPkgs.web-routes-th)
          ];
        };
      };
    };
  }