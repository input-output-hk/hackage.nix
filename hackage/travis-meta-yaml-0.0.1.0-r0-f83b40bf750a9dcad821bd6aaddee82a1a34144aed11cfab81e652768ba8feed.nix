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
        name = "travis-meta-yaml";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/travis-meta-yaml#readme";
      url = "";
      synopsis = ".travis.yml preprocessor";
      description = ".travis.yml preprocessor";
      buildType = "Simple";
    };
    components = {
      "travis-meta-yaml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.lens-aeson)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.regex-applicative)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "travis-meta-yaml" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.regex-applicative)
            (hsPkgs.yaml)
            (hsPkgs.travis-meta-yaml)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.regex-applicative)
            (hsPkgs.yaml)
            (hsPkgs.extra)
            (hsPkgs.file-embed)
            (hsPkgs.travis-meta-yaml)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }