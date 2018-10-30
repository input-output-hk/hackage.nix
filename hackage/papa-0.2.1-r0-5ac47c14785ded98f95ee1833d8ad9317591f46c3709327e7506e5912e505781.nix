{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "papa";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/data61/papa";
      url = "";
      synopsis = "Reasonable default import";
      description = "Reasonable default import";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.papa-base)
          (hsPkgs.papa-base-export)
          (hsPkgs.papa-base-implement)
          (hsPkgs.papa-bifunctors)
          (hsPkgs.papa-bifunctors-export)
          (hsPkgs.papa-bifunctors-implement)
          (hsPkgs.papa-lens)
          (hsPkgs.papa-lens-export)
          (hsPkgs.papa-lens-implement)
          (hsPkgs.papa-semigroupoids)
          (hsPkgs.papa-semigroupoids-export)
          (hsPkgs.papa-semigroupoids-implement)
          (hsPkgs.papa-export)
          (hsPkgs.papa-implement)
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
          ];
        };
      };
    };
  }