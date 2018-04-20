{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "failure";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "pepeiborra@gmail.com";
        author = "Pepe Iborra, Michael Snoyman, Nicolas Pouillard";
        homepage = "http://www.haskell.org/haskellwiki/Failure";
        url = "";
        synopsis = "A simple type class for success/failure computations. (deprecated)";
        description = "Please switch to the exceptions package";
        buildType = "Simple";
      };
      components = {
        failure = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }