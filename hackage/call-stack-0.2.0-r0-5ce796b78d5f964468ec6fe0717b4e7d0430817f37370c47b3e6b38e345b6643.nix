{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "call-stack"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "https://github.com/sol/call-stack#readme";
      url = "";
      synopsis = "Use GHC call-stacks in a backward compatible way";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "spec" = {
          depends = [ (hsPkgs.base) (hsPkgs.call-stack) (hsPkgs.nanospec) ];
          };
        };
      };
    }