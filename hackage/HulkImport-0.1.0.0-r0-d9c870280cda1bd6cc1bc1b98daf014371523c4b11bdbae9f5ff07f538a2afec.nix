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
        name = "HulkImport";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015";
      maintainer = "tobs169@gmail.com";
      author = "Toby Smyth";
      homepage = "http://github.com/tobs169/HulkImport#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "HulkImport" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.pretty)
        ];
      };
      exes = {
        "HulkImport-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HulkImport)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "HulkImport-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HulkImport)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
          ];
        };
      };
    };
  }