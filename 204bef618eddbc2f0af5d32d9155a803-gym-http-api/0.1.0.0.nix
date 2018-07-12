{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gym-http-api";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dl3913@ic.ac.uk, sam@stites.io";
        author = "Daniel Lucsanszky, Sam Stites";
        homepage = "https://github.com/stites/gym-http-api#readme";
        url = "";
        synopsis = "REST client to the gym-http-api project";
        description = "This library provides a REST client to the gym open-source library. gym-http-api itself provides a <https://github.com/openai/gym-http-api/blob/master/gym_http_server.py python-based REST> server to the gym open-source library, allowing development in languages other than python.\n\nNote that the <https://github.com/openai/gym-http-api/ openai/gym-http-api> is a monorepo of all language-clients. This hackage library tracks <https://github.com/stites/gym-http-api/ stites/gym-http-api> which is the actively-maintained haskell fork.";
        buildType = "Simple";
      };
      components = {
        "gym-http-api" = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant-client
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.servant
            hsPkgs.servant-lucid
            hsPkgs.text
          ];
        };
        exes = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant-client
              hsPkgs.gym-http-api
              hsPkgs.http-client
              hsPkgs.exceptions
            ];
          };
        };
      };
    }