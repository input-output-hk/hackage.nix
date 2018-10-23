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
        name = "punkt";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "bryant@nfkb";
      author = "bryant";
      homepage = "https://github.com/bryant/punkt";
      url = "";
      synopsis = "Multilingual unsupervised sentence tokenization with Punkt.";
      description = "Multilingual unsupervised sentence tokenization with Punkt.";
      buildType = "Simple";
    };
    components = {
      "punkt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.array)
          (hsPkgs.text)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
        ];
      };
      tests = {
        "punkt-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.punkt)
            (hsPkgs.regex-tdfa)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }