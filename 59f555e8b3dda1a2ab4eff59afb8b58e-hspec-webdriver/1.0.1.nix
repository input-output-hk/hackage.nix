{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-webdriver";
          version = "1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Lenz <lenz@math.uic.edu>";
        author = "John Lenz <lenz@math.uic.edu>";
        homepage = "https://bitbucket.org/wuzzeb/webdriver-utils";
        url = "";
        synopsis = "Write end2end web application tests using webdriver and hspec";
        description = "For end to end testing of web applications from Haskell, the\n<https://hackage.haskell.org/package/webdriver webdriver> package is a great tool but just\ncontains the code to communicate with the browser.  This package integrates webdriver\nwith <http://hspec.github.io hspec>.";
        buildType = "Simple";
      };
      components = {
        "hspec-webdriver" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.data-default
            hsPkgs.hashable
            hsPkgs.hspec-core
            hsPkgs.hspec
            hsPkgs.lifted-base
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.webdriver
          ];
        };
      };
    }