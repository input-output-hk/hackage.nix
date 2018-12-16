{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "hspec-dirstream";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/hspec-dirstream";
      url = "";
      synopsis = "Helper functions to simplify adding integration tests.";
      description = "This package uses\n[hspec](https://hackage.haskell.org/package/hspec) and\n[dirstream](https://hackage.haskell.org/package/dirstream)\nto provide easy-to-use functions designed for use in\nintegration tests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hspec)
          (hsPkgs.dirstream)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          (hsPkgs.filepath)
          (hsPkgs.hspec-core)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
        ];
      };
      tests = {
        "hspec-dirstream-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec-dirstream)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }