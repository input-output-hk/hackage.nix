{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "users-persistent";
          version = "0.5.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015 - 2016 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://github.com/agrafix/users";
        url = "";
        synopsis = "A persistent backend for the users package";
        description = "This library is a backend driver using <http://hackage.haskell.org/package/persistent persistent> for\n<http://hackage.haskell.org/package/users the \"users\" library>.\n\nThe package itself does not expose any bindings but provides an instance for 'UserStorageBackend'.\n\nUsage:\n\n> module Foo where\n> import Web.Users.Types\n> import Web.Users.Persistent\n> -- code goes here";
        buildType = "Simple";
      };
      components = {
        users-persistent = {
          depends  = [
            hsPkgs.base
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.users
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.uuid
          ];
        };
        tests = {
          users-persistent-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.persistent-sqlite
              hsPkgs.monad-logger
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.users-persistent
              hsPkgs.users-test
            ];
          };
        };
      };
    }