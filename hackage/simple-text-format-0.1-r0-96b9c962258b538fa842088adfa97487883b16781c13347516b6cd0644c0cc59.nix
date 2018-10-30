{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simple-text-format";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Justus Adam";
      maintainer = "dev@justus.science";
      author = "Justus Adam";
      homepage = "https://github.com/JustusAdam/simple-text-format#readme";
      url = "";
      synopsis = "Simple text based format strings with named identifiers.";
      description = "A simple library for format strings based on text and attoparsec. See the readme for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "simple-text-format-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.simple-text-format)
            (hsPkgs.hspec)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.microlens-platform)
          ];
        };
      };
    };
  }