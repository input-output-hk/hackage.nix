{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "parsely"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "naesten@gmail.com";
      author = "Samuel Bronson";
      homepage = "http://naesten.dyndns.org:8080/repos/parsely";
      url = "";
      synopsis = "";
      description = "Typeclasses for parsing monads, and some instances";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.parsec) ]; };
      };
    }