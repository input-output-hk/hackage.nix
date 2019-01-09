{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "strio"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yone.info@gmail.com";
      author = "Ryo Yoneyama";
      homepage = "https://github.com/yulii/strio";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      exes = {
        "new-template-exe" = { depends = [ (hsPkgs.base) (hsPkgs.strio) ]; };
        };
      tests = {
        "new-template-test" = { depends = [ (hsPkgs.base) (hsPkgs.strio) ]; };
        };
      };
    }