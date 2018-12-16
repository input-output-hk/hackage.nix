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
      specVersion = "1.6";
      identifier = {
        name = "imparse";
        version = "0.0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Multi-platform parser analyzer and generator.";
      description = "Multi-platform parser analyzer and generator.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.MissingH)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.directory)
          (hsPkgs.staticanalysis)
          (hsPkgs.compilation)
          (hsPkgs.ascetic)
          (hsPkgs.uxadt)
          (hsPkgs.richreports)
        ];
      };
      exes = {
        "imparse" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.MissingH)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.split)
            (hsPkgs.directory)
            (hsPkgs.staticanalysis)
            (hsPkgs.compilation)
            (hsPkgs.ascetic)
            (hsPkgs.uxadt)
            (hsPkgs.richreports)
          ];
        };
      };
    };
  }