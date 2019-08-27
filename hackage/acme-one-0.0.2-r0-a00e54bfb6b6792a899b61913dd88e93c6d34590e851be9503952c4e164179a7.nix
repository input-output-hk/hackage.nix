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
      identifier = { name = "acme-one"; version = "0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      author = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      homepage = "https://github.com/ion1/acme-zero-one";
      url = "";
      synopsis = "The identity element of package dependencies";
      description = "<https://www.haskell.org/cabal/users-guide/developing-packages.html Cabal>\npackage dependencies form a commutative monoid with an absorbing element.\nThey satisfy the following axioms:\n\n[Associativity]\n\nFor all dependencies @a@, @b@ and @c@,\n\n@\n(a , b) , c = a , (b , c)\n@\n\nIn fact, the Cabal syntax does not even allow you to use the parentheses for\nthis reason.\n\n[Commutativity]\n\nFor all dependencies @a@ and @b@,\n\n@\na , b = b , a\n@\n\n[Identity element]\n\nFor all dependencies @a@,\n\n@\nacme-one , a = a\na , acme-one = a\n@\n\nDepending on @<https://hackage.haskell.org/package/acme-one acme-one>@ has no\nadditional effect.\n\n[Absorbing element]\n\nFor all dependencies @a@,\n\n@\nacme-zero , a = acme-zero\na , acme-zero = acme-zero\n@\n\nDepending on @<https://hackage.haskell.org/package/acme-zero acme-zero>@ in\naddition has the same effect as /only/ depending on @acme-zero@.";
      buildType = "Simple";
      };
    components = { "library" = {}; };
    }