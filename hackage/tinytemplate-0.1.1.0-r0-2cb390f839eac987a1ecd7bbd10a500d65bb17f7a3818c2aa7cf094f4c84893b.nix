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
        name = "tinytemplate";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "(c) DICOM Grid Inc. 2015";
      maintainer = "paf31@cantab.net";
      author = "Phil Freeman";
      homepage = "http://github.com/dicomgrid/tinytemplate";
      url = "";
      synopsis = "A tiny text templating library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "tinytemplate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tinytemplate-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.tinytemplate)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }