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
        name = "config-parser";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "protob3n@gmail.com";
      author = "Ben Hamlin";
      homepage = "github.com/protoben/config-parser";
      url = "";
      synopsis = "Parse config files using parsec and generate parse errors\non unhandled keys";
      description = "This is yet another entry in Haskell's enourmous collection\nof config-file parsing libraries. It lacks many of the\nbells and whistles of other config-file parsing libraries,\nsuch as hierarchical sections and on-the-fly reloading. On\nthe other hand, it has a combination of features I was\nunable to find in other libraries:\n* Keys and values are parsed with configurable parsec\nparsers, resulting in flexible syntax and pretty\nerror messages.\n* Custom parsers can be created with parsec to handle\nvalues of any type.\n* Keys that aren't explicitly handled result in parse\nerrors.\nIf you don't need all of these features, there are\nprobably better libraries out there for you. If you're free\nto use its idiosyncratic file format, the config-value\nlibrary, in particular, is excelent.";
      buildType = "Simple";
    };
    components = {
      "config-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "parsing" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.parsec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }