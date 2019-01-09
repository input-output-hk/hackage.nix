{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dockerfile"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Christopher Reichert <creichert07@gmail.com>";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "";
      url = "";
      synopsis = "Type-safe composable Dockerfile generator and parsers.";
      description = "Describe Dockerfile containers in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "spec" = {
          depends = [ (hsPkgs.base) (hsPkgs.dockerfile) (hsPkgs.hspec) ];
          };
        };
      };
    }