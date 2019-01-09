{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mockery"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2015 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Support functions for automated testing";
      description = "Support functions for automated testing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.temporary) (hsPkgs.directory) ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.mockery)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }