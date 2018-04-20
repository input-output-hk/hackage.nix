{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "users";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://github.com/agrafix/users";
        url = "";
        synopsis = "A library simplifying user management for web applications";
        description = "Scrap the boilerplate for managing user accounts in web applications\n\nFeatures:\n\n* Easy to understand API\n\n* CRUD for Users\n\n* Session Management\n\n* Password reset functionality\n\n* Activation functionality\n\nCurrent Backends:\n\n* <http://hackage.haskell.org/package/users-postgresql-simple PostgreSQL-Simple Backend>\n";
        buildType = "Simple";
      };
      components = {
        users = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bcrypt
            hsPkgs.path-pieces
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }