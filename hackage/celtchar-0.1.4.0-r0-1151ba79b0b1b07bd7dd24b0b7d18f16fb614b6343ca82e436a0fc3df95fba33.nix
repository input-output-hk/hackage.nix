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
        version = "0.1.4.0";
      };
      license = "MIT";
      copyright = "2016 - 2018 Thomas Letan";
      maintainer = "contact@thomasletan.fr";
      author = "Thomas Letan";
      homepage = "https://nest.pijul.com/lthms/celtchar";
      url = "";
      synopsis = "A tool to build a novel";
      description = "celtchar is a tool to build a novel. It is part\nof the Ogma project and mostly relies on the\nogmarkup language.";
      buildType = "Simple";
    };
    components = {
      "celtchar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.ogmarkup)
          (hsPkgs.pandoc)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
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
            (hsPkgs.bytestring)
            (hsPkgs.yaml)
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