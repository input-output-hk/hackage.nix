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
        name = "hexml-lens";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "https://github.com/pepeiborra/hexml-lens#readme";
      url = "";
      synopsis = "Lenses for the hexml package";
      description = "Lenses for the hexml package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.contravariant)
          (hsPkgs.foundation)
          (hsPkgs.hexml)
          (hsPkgs.lens)
          (hsPkgs.profunctors)
          (hsPkgs.text)
        ];
      };
      tests = {
        "courses" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hexml)
            (hsPkgs.hexml-lens)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.wreq)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.hexml-lens)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }