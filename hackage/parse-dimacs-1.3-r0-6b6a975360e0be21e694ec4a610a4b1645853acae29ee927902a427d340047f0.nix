{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "parse-dimacs"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Denis Bueno <dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "";
      url = "";
      synopsis = "DIMACS CNF parser library";
      description = "A DIMACS CNF parser library, implemented with Parsec 3, using ByteStrings.\nDIMACS CNF is a file format for describing constraint problems in\nconjunctive normal form.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          ];
        };
      };
    }