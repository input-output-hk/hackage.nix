{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "users-postgresql-simple"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/users";
      url = "";
      synopsis = "A PostgreSQL backend for the users package";
      description = "This library is a backend driver using <http://hackage.haskell.org/package/postgresql-simple postgresql-simple> for\n<http://hackage.haskell.org/package/users the \"users\" library>.\n\nIt supports all postgres versions starting from 8.3 and requires the included extensions pgcrypto, uuid-ossp.\n\nThe package itself does not expose any bindings but provides an instance for 'UserStorageBackend'.\n\nUsage:\n\n> module Foo where\n> import Web.Users.Types\n> import Web.Users.Postgresql ()\n> -- code goes here";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.users)
          (hsPkgs.postgresql-simple)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.uuid)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          ];
        };
      tests = {
        "users-postgresql-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.postgresql-simple)
            (hsPkgs.users-postgresql-simple)
            (hsPkgs.users-test)
            ];
          };
        };
      };
    }