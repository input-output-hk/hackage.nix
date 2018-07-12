{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libroman";
          version = "2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Alexander Hakki";
        maintainer = "ahakki@ahakki.xyz";
        author = "Alexander Hakki";
        homepage = "https://ahakki.xyz";
        url = "";
        synopsis = "arabic to roman numeral conversions";
        description = "This is a Haskell thing that turns numbers into Roman numerals";
        buildType = "Simple";
      };
      components = {
        "libroman" = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
          ];
        };
        tests = {
          "libroman-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.libroman
            ];
          };
        };
      };
    }