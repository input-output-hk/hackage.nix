{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "metar-http"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@sıɹɹoɯʇ>";
      homepage = "https://gitlab.com/tonymorris/metar-http";
      url = "";
      synopsis = "HTTP for METAR";
      description = "A trivial HTTP program for getting METAR";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.metar)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.warp)
          (hsPkgs.wai)
          ];
        };
      exes = {
        "metar-http" = { depends = [ (hsPkgs.base) (hsPkgs.metar-http) ]; };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.checkers)
            (hsPkgs.metar-http)
            (hsPkgs.lens)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }