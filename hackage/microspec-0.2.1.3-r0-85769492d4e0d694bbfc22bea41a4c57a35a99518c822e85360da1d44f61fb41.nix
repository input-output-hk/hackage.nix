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
      identifier = { name = "microspec"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Tiny QuickCheck test library with minimal dependencies";
      description = "A tiny (1 module, <500 lines) property-based (and unit) testing library with minimal dependencies.\n\nInstead of reinventing the wheel (<https://xkcd.com/927>), we use a\nRSpec/HSpec-like DSL and run tests with QuickCheck.\n\nFor many use-cases, microspec is a drop-in replacement for hspec.\n\n> import Test.Microspec\n>\n> main :: IO ()\n> main = microspec \$ do\n>    describe \"replicate\" \$ do\n>       it \"doubles with 2\" \$\n>          replicate 2 'x' === \"xx\"\n>       it \"creates a list of the right size\" \$\n>          \\(Positive n) -> length (replicate n 'x') === n\n>\n>    describe \"reverse\" \$ do\n>       it \"reverse . reverse === id\" \$ \\l ->\n>          reverse (reverse l) === (l :: [Int])\n>\n>    describe \"tail\" \$\n>       it \"length is -1\" \$ \\(NonEmpty l) ->\n>          length (tail l :: [Int]) === length l - 1\n>\n>    describe \"solve the halting problem\" \$\n>       pending";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        };
      };
    }