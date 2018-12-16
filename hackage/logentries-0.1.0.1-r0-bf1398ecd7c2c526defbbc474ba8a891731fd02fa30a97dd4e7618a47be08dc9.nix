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
        name = "logentries";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Todd Mohney";
      maintainer = "toddmohney@gmail.com";
      author = "Todd Mohney";
      homepage = "https://github.com/toddmohney/logentries#README.md";
      url = "";
      synopsis = "Request logger middleware for Logentries";
      description = "Wai Middleware request logger for Logentries";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.fast-logger)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.uuid-types)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
        ];
      };
      tests = {
        "logentries-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
            (hsPkgs.logentries)
            (hsPkgs.uuid-types)
          ];
        };
      };
    };
  }