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
    flags = { old-data-default-class = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "data-default-instances-new-base";
        version = "0.0.2";
        };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/data-default-extra";
      url = "";
      synopsis = "Default instances for types in newer versions of base package.";
      description = "Orphan instances for @Default@ type class, which is defined in package\n<https://hackage.haskell.org/package/data-default-class data-default-class>.\n\nIn addition to instances reexported from\n<https://hackage.haskell.org/package/data-default-instances-base data-default-instances-base>\npackage, following @Default@ instances are provided:\n\n> instance Default a => Default (Const a b) where\n>     def = Const def\n>\n> instance Monad m => Default (Kleisli m a b) where\n>     def = Kleisli return\n>\n> instance Default Version where\n>     def = Version [] []\n\nFollowing instances are available only for base >= 4.7.0.0:\n\n> instance Default (Proxy a) where\n>     def = Proxy\n>\n> instance Default SomeNat where\n>     def = SomeNat (Proxy :: Proxy 0)\n>\n> instance Default SomeSymbol where\n>     def = SomeSymbol (Proxy :: Proxy \"\")\n\nFollowing instances are available only for base >= 4.8.0.0:\n\n> instance Alternative f => Default (Alt f a) where\n>     def = Alt empty\n>\n> instance Default a => Default (Identity a) where\n>     def = Identity def\n>\n> instance Default Natural where\n>     def = 0\n\nFollowing instances are available only for base >= 4.9.0.0:\n\n> instance Default a => Default (NonEmpty a) where\n>     def = def :| []\n>\n> instance Bounded a => Default (Min a) where\n>     def = minBound\n>\n> instance Bounded a => Default (Max a) where\n>     def = maxBound\n>\n> instance Default (Option a) where\n>     def = Option Nothing";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (if flags.old-data-default-class
          then [
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."data-default-instances-base" or (buildDepError "data-default-instances-base"))
            ]
          else [
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            ]);
        };
      };
    }