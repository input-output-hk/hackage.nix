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
      specVersion = "1.6";
      identifier = {
        name = "hp2html";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "A tool for converting GHC heap-profiles to HTML.";
      description = "A tool for converting GHC heap-profiles to HTML.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hp2html" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }