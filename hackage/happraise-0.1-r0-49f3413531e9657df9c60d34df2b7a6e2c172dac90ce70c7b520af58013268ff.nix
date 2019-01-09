{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "happraise"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Allan Clark <allan.clark@gmail.com>";
      author = "Allan Clark";
      homepage = "";
      url = "";
      synopsis = "A small program for counting the comments in haskell source";
      description = "A small program for counting the comments in the haskell source files of\na project. It can work recursively over directories and/or over a list\nof given files. For example one can run: \"happraise \$(darcs query manifest)\".\nOr put this as a command in your Setup.hs file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "happraise" = {
          depends = [ (hsPkgs.base) (hsPkgs.filepath) (hsPkgs.directory) ];
          };
        };
      };
    }