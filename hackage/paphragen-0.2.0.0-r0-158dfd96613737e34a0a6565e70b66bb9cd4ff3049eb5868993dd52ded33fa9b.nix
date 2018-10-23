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
        name = "paphragen";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "marcelogmillani@gmail.com";
      author = "Marcelo Garlet Millani";
      homepage = "";
      url = "";
      synopsis = "A passphrase generator.";
      description = "A passphrase is a password made with words instead of just letters and digits. The advantage over passwords is that they are easier to remember. The disadvantage is that they are quite long and people tend to overestimate their security.\n\nMost tools for password generation that we know just generate a random sequence of characters and cannot properly estimate the strength of a passphrase.\n\n`paphragen` is capable not only of generating passphrases from a given word list, it can also build such word lists given sufficient text input (e.g. books, news articles...). It also properly computes the strength of the generated password. A stream of random bytes can be used in order to achieve cryptographic-quality randomness.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "paphragen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }