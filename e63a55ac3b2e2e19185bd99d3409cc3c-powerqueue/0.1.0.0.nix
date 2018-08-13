{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "powerqueue";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A flexible job queue with exchangeable backends";
      description = "A flexible job queue with exchangeable backends";
      buildType = "Simple";
    };
    components = {
      "powerqueue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.async)
        ];
      };
      tests = {
        "powerqueue-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.powerqueue)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.async)
          ];
        };
      };
    };
  }