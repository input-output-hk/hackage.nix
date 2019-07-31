{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimize-gmp = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cborg"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2019 Duncan Coutts,\n2015-2019 Well-Typed LLP,\n2015 IRIS Connect Ltd";
      maintainer = "duncan@community.haskell.org, ben@smart-cactus.org";
      author = "Duncan Coutts";
      homepage = "";
      url = "";
      synopsis = "Concise Binary Object Representation (CBOR)";
      description = "This package provides an efficient implementation of the Concise\nBinary Object Representation (CBOR), as specified by\n[RFC 7049](https://tools.ietf.org/html/rfc7049).\n\nIf you are looking for a library for serialisation of Haskell values,\nhave a look at the [serialise](/package/serialise) package, which is\nbuilt upon this library.\n\nAn implementation of the standard bijection between CBOR and JSON is\nprovided by the [cborg-json](/package/cborg-json) package. Also see\n[cbor-tool](/package/cbor-tool) for a convenient command-line utility\nfor working with CBOR data.\n\nThis package was formerly known as @binary-serialise-cbor@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.half)
          (hsPkgs.primitive)
          (hsPkgs.text)
          ] ++ (pkgs.lib).optional (flags.optimize-gmp) (hsPkgs.integer-gmp)) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.cborg)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.fail)
            (hsPkgs.half)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.scientific)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }