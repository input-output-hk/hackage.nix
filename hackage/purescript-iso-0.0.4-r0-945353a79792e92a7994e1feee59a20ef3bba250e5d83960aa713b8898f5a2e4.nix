{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "purescript-iso"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/purescript-iso#readme";
      url = "";
      synopsis = "Isomorphic trivial data type definitions over JSON";
      description = "Please see the README on GitHub at <https://github.com/githubuser/purescript-iso#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.aeson-attoparsec)
          (hsPkgs.aeson-diff)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-uri)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.emailaddress)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.uuid)
          (hsPkgs.zeromq4-haskell)
          (hsPkgs.zeromq4-simple)
          ];
        };
      tests = {
        "purescript-iso-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-attoparsec)
            (hsPkgs.aeson-diff)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-uri)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.emailaddress)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.purescript-iso)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.scientific)
            (hsPkgs.stm)
            (hsPkgs.strict)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            (hsPkgs.uuid)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.zeromq4-simple)
            ];
          };
        };
      };
    }