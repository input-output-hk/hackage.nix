{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "base-compat"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Provides readMaybe, lookupEnv, etc. for older versions of base";
      description = "Provides new additions to base for older versions of base, so\nthat they can be used without sacrificing backward\ncompatibility.\n\nSo far the following is covered:\n\n* readMaybe\n\n* readEither\n\n* lookupEnv\n\n* <>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.hspec)
            (hsPkgs.setenv)
            ];
          };
        };
      };
    }