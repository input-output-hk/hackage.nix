{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "perm";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andy Sonnenburg <andy22286@gmail.com>";
        author = "Andy Sonnenburg";
        homepage = "https://github.com/sonyandy/perm";
        url = "";
        synopsis = "permutation Applicative and Monad with many mtl instances";
        description = "Based on \\\"Parsing Permutation Phrases\\\", by Arthur Baars, Andres Loeh and S.\nDoaitse Swierstra, /Haskell Workshop 2001/.  The implementation given here\ndoes not include explicit optional actions, and instead implements\n'Alternative' and 'MonadPlus'.  @m '<|>' 'pure' a@ should be used where\n@'addOpt' a m@ would be used.";
        buildType = "Simple";
      };
      components = {
        "perm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.catch-fd
          ];
        };
      };
    }