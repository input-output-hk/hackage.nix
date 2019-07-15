{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "backstop"; version = "1.3.0.352"; };
      license = "GPL-3.0-only";
      copyright = "All rights reserved (c)1999-2019.";
      maintainer = "marcus@gabriel.name";
      author = "Marcus D. Gabriel";
      homepage = "https://github.com/mdgabriel/backstop.git";
      url = "";
      synopsis = "Backstop a target directory by source directories";
      description = "The backstop command is a UNIX, Linux, and *BSD tool. Intuitively,\nbackstop fills in the missing objects or holes that exist in the\ntarget directory relative to the source directories thereby\ncreating a merged view of the target and source directories.\nDe-backstop undoes this. See \"backstop -m\" for a manual page\nor the [homepage](https://github.com/mdgabriel/backstop.git)\nfor more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.unix)
          ];
        };
      exes = {
        "backstop" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.unix)
            ];
          };
        };
      tests = {
        "run-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }