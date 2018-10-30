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
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Joe Canero";
      maintainer = "jmc41493@gmail.com";
      author = "Joe Canero";
      homepage = "https://github.com/caneroj1/filter-logger#readme";
      url = "";
      synopsis = "Filterable request logging as a wai middleware. Change what data is logged and when.";
      description = "Composable filters to transform objects and control when they are written to server logs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.fast-logger)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
        ];
      };
      exes = {
        "filter-logger-basic-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filter-logger)
            (hsPkgs.bytestring)
            (hsPkgs.scotty)
          ];
        };
        "filter-logger-password-exe" = {
          depends  = [
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filter-logger)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }