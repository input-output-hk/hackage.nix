{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "celtchar";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "2016 Thomas Letan";
      maintainer = "contact@thomasletan.fr";
      author = "Thomas Letan";
      homepage = "https://nest.pijul.com/lthms/celtchar";
      url = "";
      synopsis = "A tool to build a novel";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "celtchar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ogmarkup)
          (hsPkgs.yaml)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.pandoc)
          (hsPkgs.shakespeare)
          (hsPkgs.megaparsec)
        ];
      };
      exes = {
        "celtchar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.celtchar)
          ];
        };
      };
      tests = {
        "celtchar-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.hspec)
            (hsPkgs.celtchar)
          ];
        };
      };
    };
  }