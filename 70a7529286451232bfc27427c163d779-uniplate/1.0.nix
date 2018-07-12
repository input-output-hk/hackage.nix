{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "uniplate";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2006-7, Neil Mitchell";
        maintainer = "ndmitchell@gmail.com";
        author = "Neil Mitchell";
        homepage = "http://www-users.cs.york.ac.uk/~ndm/uniplate/";
        url = "";
        synopsis = "Uniform type generic traversals.";
        description = "Uniplate is a boilerplate removal library, with similar goals to the\noriginal Scrap Your Boilerplate work. It requires few extensions to\nHaskell.";
        buildType = "Custom";
      };
      components = {
        "uniplate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }