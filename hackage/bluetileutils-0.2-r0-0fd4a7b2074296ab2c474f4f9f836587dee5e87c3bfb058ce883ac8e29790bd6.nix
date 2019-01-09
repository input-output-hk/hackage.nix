{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bluetileutils"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Jan Vornberger";
      homepage = "";
      url = "";
      synopsis = "Utilities for Bluetile";
      description = "This package is OBSOLETE.\nThe contents of this package has been merged in with the package 'bluetile'.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bluetilemockwin-obsolete" = {
          depends = [ (hsPkgs.base) (hsPkgs.base) (hsPkgs.gtk) ];
          };
        };
      };
    }