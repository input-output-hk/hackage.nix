{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wordlist"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/wordlist";
      url = "";
      synopsis = "Command-line tool to get random words";
      description = "A command-line application that outputs a random list\nof words, designed to generate memorable passwords.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.optparse-applicative) (hsPkgs.text) ];
        };
      exes = {
        "wordlist" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.base)
            (hsPkgs.MonadRandom)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.wordlist)
            ];
          };
        };
      };
    }