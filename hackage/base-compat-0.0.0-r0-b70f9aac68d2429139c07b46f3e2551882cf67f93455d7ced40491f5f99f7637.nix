{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "base-compat";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "(c) 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Provide new additions to base for older versions of base";
      description = "Provide new additions to base for older versions of base, so\nthat you can use them without sacrificing backward\ncompatibility.\n\nCurrently the following is covered:\n\n* Text.Read.readMaybe\n\n* Text.Read.readEither\n\n* System.Environment.lookupEnv\n\n* System.Environment.getExecutablePath";
      buildType = "Simple";
    };
    components = {
      "base-compat" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.hspec)
            (hsPkgs.setenv)
          ];
        };
      };
    };
  }