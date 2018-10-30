{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      optimize = false;
      profiling = false;
      tracing = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hnix";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "https://github.com/haskell-nix/hnix#readme";
      url = "";
      synopsis = "Haskell implementation of the Nix language";
      description = "Haskell implementation of the Nix language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-fix)
          (hsPkgs.deepseq)
          (hsPkgs.deriving-compat)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.hashing)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.lens-family)
          (hsPkgs.lens-family-core)
          (hsPkgs.lens-family-th)
          (hsPkgs.logict)
          (hsPkgs.megaparsec)
          (hsPkgs.monadlist)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.these)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.xml)
        ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs.base16-bytestring)
          (hsPkgs.cryptohash-md5)
          (hsPkgs.cryptohash-sha1)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.cryptohash-sha512)
          (hsPkgs.serialise)
        ]) ++ (if compiler.isGhcjs && true
          then [ (hsPkgs.hashable) ]
          else [
            (hsPkgs.hashable)
            (hsPkgs.haskeline)
            (hsPkgs.pretty-show)
          ]);
      };
      exes = {
        "hnix" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-fix)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hashing)
            (hsPkgs.haskeline)
            (hsPkgs.hnix)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.repline)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs.base16-bytestring)
            (hsPkgs.cryptohash-md5)
            (hsPkgs.cryptohash-sha1)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.cryptohash-sha512)
            (hsPkgs.serialise)
          ];
        };
      };
      tests = {
        "hnix-tests" = {
          depends  = [
            (hsPkgs.Diff)
            (hsPkgs.Glob)
            (hsPkgs.QuickCheck)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-fix)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.generic-random)
            (hsPkgs.hashing)
            (hsPkgs.hnix)
            (hsPkgs.interpolate)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-show)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs.base16-bytestring)
            (hsPkgs.cryptohash-md5)
            (hsPkgs.cryptohash-sha1)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.cryptohash-sha512)
            (hsPkgs.serialise)
          ];
        };
      };
      benchmarks = {
        "hnix-benchmarks" = {
          depends  = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.data-fix)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hashing)
            (hsPkgs.hnix)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs.base16-bytestring)
            (hsPkgs.cryptohash-md5)
            (hsPkgs.cryptohash-sha1)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.cryptohash-sha512)
            (hsPkgs.serialise)
          ];
        };
      };
    };
  }