{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "line2pdf";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "Simple command-line utility to convert text into PDF";
      description = "Simple command-line utility to convert text into PDF";
      buildType = "Simple";
    };
    components = {
      exes = {
        "line2pdf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }