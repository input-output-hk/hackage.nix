{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "selenium"; version = "0.2.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
          ];
        };
      };
    }