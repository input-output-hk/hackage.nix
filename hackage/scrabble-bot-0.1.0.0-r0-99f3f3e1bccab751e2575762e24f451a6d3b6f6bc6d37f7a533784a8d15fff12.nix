{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "scrabble-bot"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "András Kovács <puttamalac@gmail.com>";
      author = "András Kovács";
      homepage = "";
      url = "";
      synopsis = "Scrabble play generation.";
      description = "A small program for generating plays for Scrabble tables.\nCurrently only the classic Scrabble board layout is supported and the user interface is pretty much nonexistent.\nYou can change the board, the rack and the number of plays displayed by manually editing the Main source file and rebuilding.\nHence, downloading the source distribution is advised.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "scrabble-bot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.split)
            (hsPkgs.parallel)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.deepseq)
            (hsPkgs.packed-dawg)
            ];
          };
        };
      };
    }