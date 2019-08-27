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
      identifier = { name = "wiring"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "git@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "http://github.com/seanparsons/wiring/";
      url = "";
      synopsis = "Wiring, promotion and demotion of types.";
      description = "This package provides the ability to join up or wire instances of types (such as ReaderT, WriterT and RWST) with some semi-automatic conversions.\n\n/ReaderT Example/\n\nWith ReaderT there might be two functions already written that we wish to compose:\n\n> userLookup :: Int -> ReaderT (Resource1, Database1) IO User\n> ordersLookup :: Int -> ReaderT (Database2, Resource1) IO [String]\n\nOrdinarily these could not be used together because their environment type differs,\nwhich reduces the utility of ReaderT as a method of <http://en.wikipedia.org/wiki/Dependency_injection dependency injection>.\n\nHowever with use of the @wire@ method from the @Wirable@ typeclass it becomes possible to use these two together with little pain.\n\n> composedLookup :: Int -> ReaderT (Resource1, Database1, Database2) IO String\n> composedLookup userId = do\n>   user    <- wire \$ userLookup userId\n>   orders  <- wire \$ ordersLookup userId\n>   return \$ describeOrders user orders\n\n/Tuples/\n\nBuilt in are instances of @Wirable@ for transforming tuples to their individual fields, like taking @a@ from a tuple @(a, b, c)@.\n\nAs well as producing new tuples from existing tuples, starting with a tuple of @(a, b, c)@ and returning a tuple of @(c, a)@.\n\n/Other Types/\n\nWriterT and RWST are similarly well supported, including the ability to promote from ReaderT\\/WriterT up to RWST.\n\nSome existing functionality is extended like for instance with the @wiredAsk@ and @wiredTell@ functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      };
    }