{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "org2anki";
        version = "0.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mromang08+github@gmail.com";
      author = "Mario Román (M42)";
      homepage = "https://github.com/M42/org2anki";
      url = "";
      synopsis = "Basic org to anki exporter";
      description = "A basic parser of the markup-related subset of org-mode and an Anki one-side flashcards exporter.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "org2anki" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
          ];
        };
      };
    };
  }