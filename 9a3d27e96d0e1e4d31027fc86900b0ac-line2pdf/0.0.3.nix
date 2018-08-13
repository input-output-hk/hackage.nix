{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "line2pdf";
        version = "0.0.3";
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
          depends  = if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.bytestring)
            ]
            else [ (hsPkgs.base) ];
        };
      };
    };
  }