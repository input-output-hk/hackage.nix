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
        name = "AlgoRhythm";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Orestis Melkonian <melkon.or@gmail.com>";
      author = "Orestis Melkonian, Joris ten Tusscher, Cas van der Rest";
      homepage = "http://github.com/omelkonian/AlgoRhythm/";
      url = "";
      synopsis = "Algorithmic music composition";
      description = "A library consisting of several mini-DSLs for representing, manipulating and\nautomatically generating music.";
      buildType = "Simple";
    };
    components = {
      "AlgoRhythm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.midi)
          (hsPkgs.template-haskell)
          (hsPkgs.Euterpea)
          (hsPkgs.HCodecs)
          (hsPkgs.lilypond)
          (hsPkgs.data-default)
          (hsPkgs.prettify)
          (hsPkgs.text)
          (hsPkgs.QuickCheck)
          (hsPkgs.mtl)
          (hsPkgs.derive)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.random)
          (hsPkgs.kmeans)
        ];
      };
      exes = {
        "music-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.AlgoRhythm)
          ];
        };
      };
      tests = {
        "music-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.AlgoRhythm)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.derive)
            (hsPkgs.directory)
            (hsPkgs.lilypond)
            (hsPkgs.bytestring)
            (hsPkgs.HCodecs)
            (hsPkgs.Euterpea)
            (hsPkgs.random)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }