{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hexml-lens";
        version = "0.2.0";
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
          (hsPkgs.foundation)
          (hsPkgs.hexml)
          (hsPkgs.lens)
          (hsPkgs.text)
        ];
      };
      exes = {
        "courses" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hexml)
            (hsPkgs.hexml-lens)
            (hsPkgs.lens)
            (hsPkgs.wreq)
          ];
        };
      };
      tests = {
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