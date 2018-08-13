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
      specVersion = "1.10";
      identifier = {
        name = "aviation-cessna172-diagrams";
        version = "0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2017, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris, Joshua Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Joshua Morris <ɯoɔ˙lᴉɐɯƃ@llǝʞsɐɥ+sᴉɹɹoɯuɥoɾɐnɥsoɾ>";
      homepage = "https://github.com/data61/aviation-cessna172-diagrams";
      url = "";
      synopsis = "Diagrams for the Cessna 172 aircraft in aviation.";
      description = "<<http://i.imgur.com/0h9dFhl.png>>\n\nDiagrams for the Cessna 172 aircraft in aviation.";
      buildType = "Custom";
    };
    components = {
      "aviation-cessna172-diagrams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.aviation-units)
          (hsPkgs.aviation-weight-balance)
          (hsPkgs.aviation-cessna172-weight-balance)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.mtl)
          (hsPkgs.plots)
          (hsPkgs.hgeometry)
          (hsPkgs.colour)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.parsec)
            (hsPkgs.quickcheck-text)
          ];
        };
      };
    };
  }