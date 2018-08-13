{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      development = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "hspec-dirstream";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/hspec-dirstream";
      url = "";
      synopsis = "Helper functions to simplify adding integration tests.";
      description = "This package uses [hspec](http://hackage.haskell.org/package/hspec) and [dirstream](http://hackage.haskell.org/package/dirstream) to provide easy-to-use functions for integration tests.";
      buildType = "Simple";
    };
    components = {
      "hspec-dirstream" = {
        depends  = [
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-dirstream)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }