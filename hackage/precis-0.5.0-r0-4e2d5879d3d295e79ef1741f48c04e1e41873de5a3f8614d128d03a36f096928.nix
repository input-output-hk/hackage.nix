{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "precis";
        version = "0.5.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Diff Cabal packages.";
      description = "Summarize API differences between revisions of Cabal packages.\n\nPrecis library is BSD3, Precis executable is LGPL apropos\nthe dependency on CppHs.\n\nNOTE for version 0.5.0 - the next version is likely to have\nsubstantial changes. Version 0.5.0 does have a better strategy\nto resolve conditional modules, but otherwise it is not a\ncompelling upgrade. If you have 0.4.0 installed, I recommend\nyou skip this revision and wait for the next version.\n\nCHANGES\n0.4.0 to 0.5.0\n\n* Major re-organization. Module-to-file resolution substantially\nchanged. Should be better for Cabal fines that use condition\nvariables.\n\n0.3.1 to 0.4.0\n\n* Substantial changes to reporting - now a summary is printed\nto the console, and an HTML report can be generated via a\ncommand line flag.\n\n* Changed constructor names for Edit data type\n";
      buildType = "Simple";
    };
    components = {
      "precis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.Cabal)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.cpphs)
          (hsPkgs.xhtml)
        ];
      };
      exes = { "precis" = {}; };
    };
  }