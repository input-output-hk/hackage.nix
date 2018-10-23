{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "selenium";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aaron Tomb <atomb@galois.com>";
      author = "Aaron Tomb <atomb@galois.com>";
      homepage = "";
      url = "";
      synopsis = "Test web applications through a browser.";
      description = "Haskell bindings to communicate with a Selenium Remote\nControl server. This package makes it possible to use\nHaskell to write test scripts that exercise web\napplications through a web browser.";
      buildType = "Custom";
    };
    components = {
      "selenium" = {
        depends  = if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
          ];
      };
    };
  }