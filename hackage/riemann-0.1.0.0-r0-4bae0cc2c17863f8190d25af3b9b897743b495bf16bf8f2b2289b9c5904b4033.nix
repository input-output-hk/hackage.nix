{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "riemann"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2013 Joseph Abrahamson, 2015 Trevis Elser";
      maintainer = "trevis@clickscape.com";
      author = "Joseph Abrahamson, Trevis Elser";
      homepage = "https://github.com/telser/riemann-hs";
      url = "";
      synopsis = "A Riemann client for Haskell";
      description = "Very simple event sending to a Riemann server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.protobuf)
          (hsPkgs.either)
          (hsPkgs.lens)
          (hsPkgs.time)
          (hsPkgs.errors)
          (hsPkgs.data-default)
          (hsPkgs.transformers)
          (hsPkgs.cereal)
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            ];
          };
        "property" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.either)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.riemann)
            ];
          };
        "unit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.riemann)
            ];
          };
        };
      };
    }