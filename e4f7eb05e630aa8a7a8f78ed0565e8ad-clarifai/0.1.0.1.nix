{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clarifai";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "caneroj1@tcnj.edu";
        author = "Joseph Canero";
        homepage = "";
        url = "";
        synopsis = "API Client for the Clarifai API.";
        description = "Provides functionality for interacting with Clarifai's\nImage Tagging API. Users need a Clarifai account to use\nthis, as the endpoints require an access token.";
        buildType = "Simple";
      };
      components = {
        clarifai = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.lens-aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.http-client
            hsPkgs.scientific
            hsPkgs.unordered-containers
            hsPkgs.HTTP
            hsPkgs.easy-file
            hsPkgs.vector
          ];
        };
      };
    }