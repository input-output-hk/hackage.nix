{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gendocs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Orbital Labs";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "https://github.com/seanhess/gendocs#readme";
      url = "";
      synopsis = "Library for generating interface documentation from types";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.safe)
          (hsPkgs.text)
          ];
        };
      tests = {
        "gendocs-test" = { depends = [ (hsPkgs.base) (hsPkgs.gendocs) ]; };
        };
      };
    }