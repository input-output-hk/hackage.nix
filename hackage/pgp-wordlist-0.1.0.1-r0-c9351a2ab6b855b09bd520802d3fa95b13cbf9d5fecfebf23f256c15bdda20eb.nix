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
        name = "pgp-wordlist";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "David Luposchainsky <dluposchainsky(λ)gmail.com>";
      maintainer = "David Luposchainsky <dluposchainsky(λ)gmail.com>";
      author = "David Luposchainsky <dluposchainsky(λ)gmail.com>";
      homepage = "https://github.com/quchen/pgp-wordlist";
      url = "";
      synopsis = "Translate between binary data and a human-readable\ncollection of words.";
      description = "Translate between binary data and a human-readable\ncollection of words.\n\nThe PGP Word List consists of two phonetic alphabets, each\nwith one word per possible byte value. A string of bytes\nis translated with these alphabets, alternating between\nthem at each byte.\n\nThe PGP words corresponding to the bytes @5B 1D CA 6E@\nare \"erase breakaway spellbind headwaters\", for example.\n\nFor further information, see\n<http://en.wikipedia.org/wiki/PGP_word_list Wikipedia>.";
      buildType = "Simple";
    };
    components = {
      "pgp-wordlist" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.pgp-wordlist)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }