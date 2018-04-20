{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nationstates";
          version = "0.5.0.0";
        };
        license = "Apache-2.0";
        copyright = "2015 Chris Wong";
        maintainer = "lambda.fairy@gmail.com";
        author = "Chris Wong";
        homepage = "https://github.com/lfairy/nationstates";
        url = "";
        synopsis = "NationStates API client";
        description = "NationStates API client";
        buildType = "Simple";
      };
      components = {
        nationstates = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clock
            hsPkgs.containers
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.multiset
            hsPkgs.tls
            hsPkgs.transformers
            hsPkgs.xml
          ];
        };
      };
    }