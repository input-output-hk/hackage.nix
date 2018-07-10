{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      production = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rfc-prelude";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "smokejumperit+rfc@gmail.com";
        author = "Robert Fischer";
        homepage = "https://github.com/RobertFischer/rfc#readme";
        url = "";
        synopsis = "The Prelude from the Robert Fischer Commons.";
        description = "A Prelude deriving from @Classy-Prelude@ which provides additional useful bits of  functionality and convenient names.";
        buildType = "Simple";
      };
      components = {
        rfc-prelude = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.classy-prelude
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.http-api-data
            hsPkgs.integer-logarithms
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.network-uri
            hsPkgs.text
            hsPkgs.text-conversions
            hsPkgs.time
            hsPkgs.time-units
            hsPkgs.transformers
            hsPkgs.tuple
            hsPkgs.unliftio
            hsPkgs.unliftio-core
            hsPkgs.uuid-types
          ];
        };
      };
    }