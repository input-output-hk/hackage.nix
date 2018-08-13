{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "selenium";
        version = "0.2.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aaron Tomb <atomb@galois.com>";
      author = "Aaron Tomb <atomb@galois.com>";
      homepage = "";
      url = "";
      synopsis = "Test web applications through a browser.";
      description = "NOTE: This package is considered deprecated as of April\n2012. The 'webdriver' package on Hackage is more complete\nand uses the more modern WebDriver protocol used by\nrecent Selenium versions.\nHaskell bindings to communicate with a Selenium Remote\nControl server. This package makes it possible to use\nHaskell to write test scripts that exercise web\napplications through a web browser.";
      buildType = "Simple";
    };
    components = {
      "selenium" = {
        depends  = if _flags.small_base
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