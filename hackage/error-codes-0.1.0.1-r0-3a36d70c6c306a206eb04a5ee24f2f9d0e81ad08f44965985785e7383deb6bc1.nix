{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "error-codes"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/error-codes";
      url = "";
      synopsis = "Error code functions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.primitive-unlifted)
          ];
        };
      tests = {
        "test" = { depends = [ (hsPkgs.base) (hsPkgs.error-codes) ]; };
        };
      };
    }