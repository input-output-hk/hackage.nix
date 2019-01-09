{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "monomorphic"; version = "0.0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) Hiromi ISHII 2013";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/monomorphic";
      url = "";
      synopsis = "Library to convert polymorphic datatypes to/from its monomorphic represetation";
      description = "This library provides the type-class and functions to convert between polymorphic data-types and its monomorphic representation type, such as length-indexed vectors, singletons for type-level natural numbers, etc.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }