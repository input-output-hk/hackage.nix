{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "tomland";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/tomland";
      url = "";
      synopsis = "TOML parser";
      description = "TOML parser";
      buildType = "Simple";
    };
    components = {
      "tomland" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.parser-combinators)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "play-tomland" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tomland)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "tomland-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tomland)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }