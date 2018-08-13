{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "GPX";
        version = "0.6.2";
      };
      license = "BSD-3-Clause";
      copyright = "2009 -- 2012 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Thomas DuBuisson";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Thomas DuBuisson";
      homepage = "https://github.com/tonymorris/geo-gpx";
      url = "";
      synopsis = "Parse GPX files";
      description = "Parse GPS Exchange (GPX) files using HXT into data structures.";
      buildType = "Simple";
    };
    components = {
      "GPX" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hxt)
          (hsPkgs.containers)
          (hsPkgs.comonad-transformers)
          (hsPkgs.data-lens)
          (hsPkgs.xsd)
        ];
      };
    };
  }