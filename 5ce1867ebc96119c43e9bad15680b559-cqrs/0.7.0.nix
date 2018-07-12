{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "cqrs";
          version = "0.7.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Command-Query Responsibility Segregation";
        description = "Haskell implementation of the CQRS architectural pattern.";
        buildType = "Simple";
      };
      components = {
        "cqrs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.enumerator
            hsPkgs.random
            hsPkgs.transformers
          ];
        };
      };
    }