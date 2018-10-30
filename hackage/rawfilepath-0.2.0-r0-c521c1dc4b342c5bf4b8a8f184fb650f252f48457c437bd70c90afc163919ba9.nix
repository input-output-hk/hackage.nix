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
        name = "rawfilepath";
        version = "0.2.0";
      };
      license = "Apache-2.0";
      copyright = "2016 XT";
      maintainer = "e@xtendo.org";
      author = "XT";
      homepage = "https://github.com/xtendo-org/rawfilepath#readme";
      url = "";
      synopsis = "Use RawFilePath instead of FilePath";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          (hsPkgs.base)
        ];
      };
      tests = {
        "RawFilePath-test" = {
          depends  = [
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.rawfilepath)
          ];
        };
      };
    };
  }