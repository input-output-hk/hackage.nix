{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Docs"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lazy.ddiaz@gmail.com";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/Docs.html";
      url = "";
      synopsis = "Documentation types library.";
      description = "Currently, this package defines classes for types that represents documentation.\n\nThe point of this library is to make possible write documentation in a general format,\nand later, render it in a desired concrete format.\n\nAt the moment, only Html format are supported by default, but you can add new instances.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.html) ]; };
      };
    }