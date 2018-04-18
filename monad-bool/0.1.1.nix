{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-bool";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "http://github.com/jwiegley/monad-bool";
        url = "";
        synopsis = "Short-circuiting, value-returning boolean monoids and monads";
        description = "";
        buildType = "Simple";
      };
      components = {
        monad-bool = {
          depends  = [
            hsPkgs.base
            hsPkgs.attempt
            hsPkgs.cond
            hsPkgs.either
            hsPkgs.transformers
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }