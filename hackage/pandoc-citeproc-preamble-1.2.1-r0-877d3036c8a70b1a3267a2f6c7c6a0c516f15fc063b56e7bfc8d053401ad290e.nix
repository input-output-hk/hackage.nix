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
        name = "pandoc-citeproc-preamble";
        version = "1.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "spwhitton@spwhitton.name";
      author = "Sean Whitton";
      homepage = "https://github.com/spwhitton/pandoc-citeproc-preamble";
      url = "";
      synopsis = "Insert a preamble before pandoc-citeproc's bibliography";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pandoc-citeproc-preamble" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc-types)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }