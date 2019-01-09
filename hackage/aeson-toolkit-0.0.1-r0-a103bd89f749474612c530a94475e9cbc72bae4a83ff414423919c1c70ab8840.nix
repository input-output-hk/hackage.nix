{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "aeson-toolkit"; version = "0.0.1"; };
      license = "MIT";
      copyright = "(c) 2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "A generalization of Aeson over Failure";
      description = "A generalization of Aeson over Failure";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.failure)
          (hsPkgs.aeson)
          ];
        };
      tests = {
        "spec" = {
          depends = [ (hsPkgs.base) (hsPkgs.aeson-toolkit) (hsPkgs.hspec) ];
          };
        };
      };
    }