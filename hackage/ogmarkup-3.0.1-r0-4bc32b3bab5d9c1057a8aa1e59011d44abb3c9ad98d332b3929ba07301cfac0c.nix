{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { bench = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ogmarkup";
        version = "3.0.1";
      };
      license = "MIT";
      copyright = "2016 Ogma Project";
      maintainer = "contact@thomasletan.fr";
      author = "Thomas Letan, Laurent Georget";
      homepage = "http://github.com/ogma-project/ogmarkup";
      url = "";
      synopsis = "A lightweight markup language for story writers";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "ogmadown-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.ogmarkup)
            (hsPkgs.shakespeare)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "ogmarkup-bench" = {
          depends  = pkgs.lib.optionals (flags.bench) [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.ogmarkup)
            (hsPkgs.file-embed-poly)
            (hsPkgs.text)
          ];
        };
      };
    };
  }