{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "roots"; version = "0.1.1.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "/dev/null";
      url = "";
      synopsis = "Root-finding algorithms (1-dimensional)";
      description = "Framework for and a few implementations of\n(1-dimensional) numerical root-finding algorithms.\n\nChanges in 0.1.1.2: More type signature changes to build\non GHC 7.6\n\nChanges in 0.1.1.1: Added Eq contexts where necessary to\nbuild on GHC 7.4";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.tagged) ]; };
      };
    }