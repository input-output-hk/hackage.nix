let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-dict-discovery"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "http://github.com/isovector/th-dict-discovery/";
      url = "";
      synopsis = "Automatically discover available dictionaries at compile time.";
      description = "th-dict-discovery is a library to get your hands on the in-scope, concrete\ninstances of a class. The motivating use-case is to generate property tests to\nautomatically prove new instances of a class follow the laws.\n\nThis library uses Template Haskell to provide a list of existentialized 'Dict's\nfor each concrete (entirely monomorphic) instance in scope.\n\n> defInstances :: [SomeDict1 Default]\n> defInstances = \$(someDicts ''Default)\n\nThese lists can be consumed via\n@withSomeDict1 :: (forall a. c a => Proxy a -> r) -> SomeDict1 c -> r@, for\nexample, we can generate hspec tests:\n\n> spec :: Spec\n> spec = describe \"each default instance\" .\n>   forM_ defInstances \$ withSomeDict1 \$ \\(_ :: Proxy a) ->\n>     it \"shouldn't be undefined\" \$\n>       seq (def @a) True `shouldBe` True\n\nThe library also defines up to 'SomeDict8', with eliminators up to\n'withSomeDict8'. These correspond to multi-parameter typeclasses with\nfirst-order, potentially polykinded parameters.\n\nThe TH function 'someDicts' is smart enough to generate the correct arity of\n'SomeDictN' for the class under inspection, but at this time, you're responsible\nfor using the correct 'withSomeDictN' to consume it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          ];
        buildable = true;
        };
      };
    }