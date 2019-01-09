{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "highjson"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/highjson";
      url = "";
      synopsis = "Very fast JSON parsing";
      description = "Low boilerplate, easy to use and very fast JSON parsing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.hashable)
          (hsPkgs.scientific)
          (hsPkgs.hvect)
          ];
        };
      tests = {
        "highjson-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.highjson)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "highjson-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.aeson)
            (hsPkgs.highjson)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }