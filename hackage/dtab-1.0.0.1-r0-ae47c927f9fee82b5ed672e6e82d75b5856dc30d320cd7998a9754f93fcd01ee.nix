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
        name = "dtab";
        version = "1.0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "";
      url = "";
      synopsis = "Harmonix (Guitar Hero, Rock Band) DTA/DTB metadata library";
      description = "Read\\/write\\/encryption functions for the DTA\\/DTB metadata format used by\nHarmonix Music Systems in their games, including the Guitar Hero, Rock Band,\nand Karaoke Revolution series. Provides both a library and executable.";
      buildType = "Simple";
    };
    components = {
      "dtab" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.binary)
          (hsPkgs.array)
          (hsPkgs.pretty)
          (hsPkgs.containers)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "dtab" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dtab)
          ];
        };
      };
    };
  }