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
        name = "fadno";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "spopejoy@panix.com";
      author = "Stuart Popejoy";
      homepage = "http://github.com/slpopejoy/fadno";
      url = "";
      synopsis = "Minimal library for music generation and notation";
      description = "Provides the Note type and HasNote class with polymorphic pitch and duration representations,\nmetering, barring and time signature utilities, plus midi and MusicXML support.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.Decimal)
          (hsPkgs.HUnit)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.comonad)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.event-list)
          (hsPkgs.fadno-braids)
          (hsPkgs.fadno-xml)
          (hsPkgs.lens)
          (hsPkgs.midi)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.xml)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.fadno)
            (hsPkgs.lens)
            (hsPkgs.hspec)
            (hsPkgs.hspec-contrib)
          ];
        };
      };
    };
  }