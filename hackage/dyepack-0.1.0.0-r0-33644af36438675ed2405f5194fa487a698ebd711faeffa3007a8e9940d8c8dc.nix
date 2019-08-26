{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "dyepack"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Programatically identify space leaks in your program.";
      description = "Identifier space leaks in your program using Simon Marlow's\nweak pointer technique.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.generics-sop) ]; };
      exes = { "example" = { depends = [ (hsPkgs.base) (hsPkgs.dyepack) ]; }; };
      };
    }