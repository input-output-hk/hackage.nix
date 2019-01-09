{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "cassette"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mathieu Boespflug <mboes@cs.mcgill.ca>";
      author = "Mathieu Boespflug";
      homepage = "";
      url = "";
      synopsis = "A combinator library for simultaneously defining parsers and pretty printers.";
      description = "Combinator library for defining both type safe parsers and pretty printers simultaneously.\nThis library performs well in practice because parsers and printers are implemented in CPS\nand because arguments are always curried, rather than packed into nested tuples.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }