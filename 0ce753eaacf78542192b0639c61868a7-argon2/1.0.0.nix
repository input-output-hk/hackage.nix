{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "argon2";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Ollie Charles";
        homepage = "https://github.com/ocharles/argon2.git";
        url = "";
        synopsis = "Haskell bindings to libargon2 - the reference implementation of the Argon2 password-hashing function";
        description = "";
        buildType = "Simple";
      };
      components = {
        argon2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }