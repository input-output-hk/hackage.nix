{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Tic-Tac-Toe"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "2016rshah@gmail.com";
      author = "Rushi Shah";
      homepage = "https://github.com/2016rshah/Tic-Tac-Toe";
      url = "";
      synopsis = "Tic Tac Toe in your command line!";
      description = "Bored, tired, or just need a break? Play a quick game of tic tac toe against your computer in the command line!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Tic-Tac-Toe" = {
          depends = [ (hsPkgs.base) (hsPkgs.safe) (hsPkgs.split) ];
          };
        };
      };
    }