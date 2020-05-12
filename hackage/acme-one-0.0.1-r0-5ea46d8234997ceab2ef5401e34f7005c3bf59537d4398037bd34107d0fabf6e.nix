{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "acme-one"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      author = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      homepage = "https://github.com/ion1/acme-zero-one";
      url = "";
      synopsis = "The identity element of package dependencies";
      description = "<https://www.haskell.org/cabal/users-guide/developing-packages.html Cabal>\npackage dependencies form a commutative monoid with an absorbing element.\nThey satisfy the following axioms:\n\n[Associativity]\n\nFor all dependencies @a@, @b@ and @c@,\n\n@\n(a , b) , c = a , (b , c)\n@\n\nIn fact, the Cabal syntax does not even allow you to use the parentheses for\nthis reason.\n\n[Commutativity]\n\nFor all dependencies @a@ and @b@,\n\n@\na , b = b , a\n@\n\n[Identity element]\n\nFor all dependencies @a@,\n\n@\nacme-one , a = a , acme-one = a\n@\n\nDepending on @<https://hackage.haskell.org/package/acme-one acme-one>@ has no\nadditional effect.\n\n[Absorbing element]\n\nFor all dependencies @a@,\n\n@\nacme-zero , a = a , acme-zero = acme-zero\n@\n\nDepending on @<https://hackage.haskell.org/package/acme-zero acme-zero>@ in\naddition has the same effect as /only/ depending on @acme-zero@.";
      buildType = "Simple";
      };
    components = { "library" = { buildable = true; }; };
    }