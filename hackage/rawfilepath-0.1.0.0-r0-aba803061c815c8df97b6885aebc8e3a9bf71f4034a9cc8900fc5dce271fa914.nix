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
        name = "rawfilepath";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 XT";
      maintainer = "xtendo@protonmail.com";
      author = "XT";
      homepage = "https://github.com/xtendo-org/rawfilepath#readme";
      url = "";
      synopsis = "Use RawFilePath instead of FilePath";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "rawfilepath" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          (hsPkgs.base)
        ];
      };
      tests = {
        "RawFilePath-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rawfilepath)
          ];
        };
      };
    };
  }