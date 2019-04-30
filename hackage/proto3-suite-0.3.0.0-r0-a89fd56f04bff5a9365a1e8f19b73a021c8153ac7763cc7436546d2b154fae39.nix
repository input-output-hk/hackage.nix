{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dhall = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "proto3-suite"; version = "0.3.0.0"; };
      license = "Apache-2.0";
      copyright = "2017-2018 Awake Security";
      maintainer = "opensource@awakesecurity.com";
      author = "Awake Security";
      homepage = "";
      url = "";
      synopsis = "A low level library for writing out data in the Protocol Buffers wire format";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.filepath)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.haskell-src)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.neat-interpolation)
          (hsPkgs.parsec)
          (hsPkgs.parsers)
          (hsPkgs.pretty)
          (hsPkgs.pretty-show)
          (hsPkgs.proto3-wire)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.swagger2)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.turtle)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (flags.dhall) (hsPkgs.dhall);
        };
      exes = {
        "compile-proto-file" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-generic)
            (hsPkgs.proto3-suite)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.turtle)
            ];
          };
        "canonicalize-proto-file" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.optparse-generic)
            (hsPkgs.proto3-suite)
            (hsPkgs.proto3-wire)
            (hsPkgs.range-set-list)
            (hsPkgs.system-filepath)
            (hsPkgs.turtle)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.doctest)
            (hsPkgs.pretty-show)
            (hsPkgs.proto3-suite)
            (hsPkgs.proto3-wire)
            (hsPkgs.semigroups)
            (hsPkgs.swagger2)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.turtle)
            (hsPkgs.vector)
            ] ++ (pkgs.lib).optional (flags.dhall) (hsPkgs.dhall);
          };
        };
      };
    }