{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "parse-dimacs"; version = "1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "<dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "";
      url = "";
      synopsis = "DIMACS CNF parser library";
      description = "A DIMACS CNF parser library, implemented with Parsec.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.parsec) ]; };
      };
    }