{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      integer-gmp = true;
      dev = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "hashabler";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "https://github.com/jberryman/hashabler";
      url = "";
      synopsis = "Principled, portable & extensible hashing of data and types, including an implementation of the FNV-1a and SipHash algorithms.";
      description = "This package is a rewrite of the @hashable@ library by Milan Straka and\nJohan Tibell, having the following goals:\n\n- Extensibility; it should be easy to implement a new hashing algorithm on\nany @Hashable@ type; in this package we provide SipHash and FNV-1a.\n\n- Honest hashing of values, and principled hashing of algebraic data types\n(see e.g. hashable issues #74 and #30)\n\n- Cross-platform consistent hash values, with a versioning guarantee. Where\npossible we ensure morally identical data hashes to indentical values\nregardless of processor word size and endianness.\n\n- Make implementing identical hash routines in other languages as painless\nas possible. In addition to SipHash, we provide an implementation of a\nsimple hashing algorithm (FNV-1a) and make an effort to define Hashable\ninstances in a way that is well-documented and sensible, so that e.g. one\ncan easily implement a string hashing routine in JavaScript that will\nmatch the way we hash strings here.\n\n/Versioning/: Except for instances where we specifically note that we make\nno promise of consistency, changes to hash values (and consequently changes\nto @StableHashable@ values, where applicable) entail a major version number\nbump.";
      buildType = "Simple";
    };
    components = {
      "hashabler" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.9") (hsPkgs.transformers)) ++ pkgs.lib.optional (flags.integer-gmp) (hsPkgs.integer-gmp);
      };
      tests = {
        "tests" = {
          depends  = pkgs.lib.optionals (flags.dev) ([
            (hsPkgs.base)
            (hsPkgs.hashabler)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.primitive)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
          ] ++ pkgs.lib.optional (flags.integer-gmp) (hsPkgs.integer-gmp));
        };
      };
      benchmarks = {
        "bench" = {
          depends  = pkgs.lib.optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.primitive)
            (hsPkgs.hashabler)
            (hsPkgs.hashable)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
        "viz" = {
          depends  = pkgs.lib.optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.primitive)
            (hsPkgs.JuicyPixels)
            (hsPkgs.mwc-random)
            (hsPkgs.vector)
            (hsPkgs.hashabler)
            (hsPkgs.hashable)
          ];
        };
        "core" = {
          depends  = pkgs.lib.optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.hashabler)
          ];
        };
      };
    };
  }