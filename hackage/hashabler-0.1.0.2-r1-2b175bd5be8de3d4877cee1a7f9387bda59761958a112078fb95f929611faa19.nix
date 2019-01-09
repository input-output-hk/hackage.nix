{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { integer-gmp = true; dev = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hashabler"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "https://github.com/jberryman/hashabler";
      url = "";
      synopsis = "Principled, cross-platform & extensible hashing of types, including an implementation of the FNV-1a algorithm.";
      description = "This package is a rewrite of the @hashable@ library by Milan Straka and\nJohan Tibell, having the following goals:\n\n- Extensibility; it should be easy to implement a new hashing algorithm on\nany @Hashable@ type, for instance if one needed more hash bits\n\n- Honest hashing of values, and principled hashing of algebraic data types\n(see e.g. hashable issues #74 and #30)\n\n- Cross-platform consistent hash values, with a versioning guarantee. Where\npossible we ensure morally identical data hashes to indentical values\nregardless of processor word size and endianness.\n\n- Make implementing identical hash routines in other languages as painless\nas possible. We provide an implementation of a simple hashing algorithm\n(FNV-1a) and make an effort define Hashable instances in a way that is\nwell-documented and sensible, so that e.g. one can (hopefully) easily\nimplement string hashing routine in JavaScript that will match the way we\nhash strings here.\n\n/Versioning/: Except for instances where we specifically note that we make\nno promise of consistency, changes to hash values entail a major version\nnumber bump.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
          ] ++ (pkgs.lib).optional (flags.integer-gmp) (hsPkgs.integer-gmp);
        };
      tests = {
        "tests" = {
          depends = (pkgs.lib).optionals (flags.dev) ([
            (hsPkgs.base)
            (hsPkgs.hashabler)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.primitive)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            ] ++ (pkgs.lib).optional (flags.integer-gmp) (hsPkgs.integer-gmp));
          };
        "bench" = {
          depends = (pkgs.lib).optionals (flags.dev) [
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
          depends = (pkgs.lib).optionals (flags.dev) [
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
          depends = (pkgs.lib).optionals (flags.dev) [
            (hsPkgs.base)
            (hsPkgs.hashabler)
            ];
          };
        };
      };
    }