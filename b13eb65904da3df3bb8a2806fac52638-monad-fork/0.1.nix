{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-fork";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "anarchomorphism@seomraspraoi.org";
        author = "Robin Banks";
        homepage = "";
        url = "";
        synopsis = "Type class for monads which support a fork operation.";
        description = "";
        buildType = "Simple";
      };
      components = {
        monad-fork = {
          depends  = [
            hsPkgs.base
            hsPkgs.monad-control
          ];
        };
      };
    }