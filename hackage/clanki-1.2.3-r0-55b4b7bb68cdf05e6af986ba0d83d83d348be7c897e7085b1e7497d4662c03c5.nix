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
        name = "clanki";
        version = "1.2.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "marcusbuffett@me.com";
      author = "Marcus Buffett";
      homepage = "";
      url = "";
      synopsis = "Command-line spaced-repetition software";
      description = "Command-line spaced-repetition learning software. CL (command line) + Anki (popular spaced-repetition software) = Clanki. Usage is fairly simple, just follow the instructions after running the program. Add a deck, add cards to the deck, then quiz whenever possible. The program will determine what cards need to be reviewed, using the Super Memo 2 algorithm.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "clanki" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.safe)
            (hsPkgs.bytestring)
            (hsPkgs.strict)
          ];
        };
      };
    };
  }