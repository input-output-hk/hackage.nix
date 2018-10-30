{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sorted-list";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "https://github.com/Daniel-Diaz/sorted-list/blob/master/README.md";
      url = "";
      synopsis = "Type-enforced sorted lists and related functions.";
      description = "Type-enforced sorted lists and related functions.\n\nFeel free to try this library, but take in account\nthat it's still in development, so it might lack\nsome features. If you need them, do not hesitate\nto ask by opening an issue at the bug-tracker.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }