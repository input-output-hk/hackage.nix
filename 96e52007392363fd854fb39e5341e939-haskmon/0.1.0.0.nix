{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskmon";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "P.J.Rodriguez.T@gmail.com";
        author = "Pedro Rodriguez";
        homepage = "";
        url = "";
        synopsis = "A haskell wrapper for PokeAPI.co (www.pokeapi.co)";
        description = "This is a haskell wrapper for the RESTful api www.pokeapi.co. It defines most of the types and functions to get them.";
        buildType = "Simple";
      };
      components = {
        haskmon = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-streams
            hsPkgs.bytestring
            hsPkgs.io-streams
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.old-locale
            hsPkgs.containers
          ];
        };
      };
    }