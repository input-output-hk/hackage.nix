{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "travis";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomtau@hku.hk";
        author = "Tomas Tauber";
        homepage = "http://github.com/tomtau/travis#readme";
        url = "";
        synopsis = "A simple client implementation using Travis CI API.";
        description = "A simple client implementation using Travis CI API.";
        buildType = "Simple";
      };
      components = {
        travis = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.transformers
          ];
        };
      };
    }