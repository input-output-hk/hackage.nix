{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test = false;
      executable = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "vhd";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Citrix Systems Inc.";
      maintainer = "jonathan.knowles@eu.citrix.com";
      author = "Jonathan Knowles, Vincent Hanquez";
      homepage = "https://github.com/jonathanknowles/hs-vhd";
      url = "";
      synopsis = "Provides functions to inspect and manipulate virtual hard disk (VHD) files.";
      description = "Provides functions to inspect and manipulate virtual hard disk (VHD) files, according to the VHD specification (version 1.0).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.mmap)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.cereal)
          (hsPkgs.random)
          (hsPkgs.storable-endian)
        ];
      };
      exes = {
        "Tests" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
        "vhd" = {
          depends = pkgs.lib.optional (flags.executable) (hsPkgs.base);
        };
      };
    };
  }