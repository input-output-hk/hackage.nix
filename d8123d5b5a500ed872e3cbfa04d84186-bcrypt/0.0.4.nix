{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bcrypt";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Andrew Miller";
        maintainer = "andrew@amxl.com";
        author = "Andrew Miller";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings to the bcrypt password hash";
        description = "Haskell bindings to the bcrypt password hash.\nUnlike other bindings already in existence, this package is designed to allow users to work directly with password hash strings that include information about the hashing algorithm, strength, and salt. This approach allows hashed passwords to be stored in a single field that can also be used by non-Haskell applications, and makes it easy to implement a policy of updating passwords hashed to an old policy next time the plaintext password is available.\nThe OpenWall version of the C source for bcrypt (modified so it will build on all platforms without any assembler code) is included in this package.";
        buildType = "Simple";
      };
      components = {
        bcrypt = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.entropy
            hsPkgs.base
          ];
        };
      };
    }