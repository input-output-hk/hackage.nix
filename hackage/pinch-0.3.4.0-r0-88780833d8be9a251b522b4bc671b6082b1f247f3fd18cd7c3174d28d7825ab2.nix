{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pinch"; version = "0.3.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@abhinavg.net";
      author = "Abhinav Gupta";
      homepage = "https://github.com/abhinav/pinch#readme";
      url = "";
      synopsis = "An alternative implementation of Thrift for Haskell.";
      description = "This library provides machinery for types to specify how they can be\nserialized and deserialized into/from Thrift payloads. It makes no\nassumptions on how these payloads are sent or received and performs no code\ngeneration. Types may specify how to be serialized and deserialized by\ndefining instances of the @Pinchable@ typeclass by hand, or with\nautomatically derived instances by using generics. Check the documentation\nin the \"Pinch\" module for more information.\n\n/What is Thrift?/ Apache Thrift provides an interface description language,\na set of communication protocols, and a code generator and libraries for\nvarious programming languages to interact with the generated code. Pinch\naims to provide an alternative implementation of Thrift for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "pinch-spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.pinch)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }