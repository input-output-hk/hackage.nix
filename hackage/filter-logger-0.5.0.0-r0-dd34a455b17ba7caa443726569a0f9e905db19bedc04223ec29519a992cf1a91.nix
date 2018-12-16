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
        name = "filter-logger";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Joe Canero";
      maintainer = "jmc41493@gmail.com";
      author = "Joe Canero";
      homepage = "https://github.com/caneroj1/filter-logger#readme";
      url = "";
      synopsis = "Filterable request logging wai middleware. Change how data is logged and when.";
      description = "Composable filters to transform objects and control when they are written to server logs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.fast-logger)
          (hsPkgs.http-types)
          (hsPkgs.semigroups)
          (hsPkgs.time)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-logger)
        ];
      };
      exes = {
        "filter-logger-basic-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filter-logger)
            (hsPkgs.bytestring)
            (hsPkgs.scotty)
          ];
        };
        "filter-logger-password-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filter-logger)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.scotty)
          ];
        };
      };
      tests = {
        "filter-logger-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filter-logger)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }