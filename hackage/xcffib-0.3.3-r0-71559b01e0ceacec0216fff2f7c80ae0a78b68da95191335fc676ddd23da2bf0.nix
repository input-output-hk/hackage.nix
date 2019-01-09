{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xcffib"; version = "0.3.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Tycho Andersen <tycho@tycho.ws>";
      author = "Tycho Andersen";
      homepage = "http://github.com/tych0/xcffib";
      url = "";
      synopsis = "A cffi-based python binding for X";
      description = "A cffi-based python binding for X, comparable to xpyb";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.xcb-types)
          (hsPkgs.language-python)
          (hsPkgs.filepath)
          (hsPkgs.filemanip)
          (hsPkgs.split)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          ];
        };
      exes = {
        "xcffibgen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xcffib)
            (hsPkgs.language-python)
            (hsPkgs.split)
            (hsPkgs.xcb-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            ];
          };
        };
      tests = {
        "PyHelpersTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xcffib)
            (hsPkgs.language-python)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        "GeneratorTests.hs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xcffib)
            (hsPkgs.xcb-types)
            (hsPkgs.language-python)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }