{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "magicbane";
          version = "0.1.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "2017 Greg V <greg@unrelenting.technology>";
        maintainer = "greg@unrelenting.technology";
        author = "Greg V";
        homepage = "https://github.com/myfreeweb/magicbane";
        url = "";
        synopsis = "A web framework that integrates Servant, ClassyPrelude, EKG, fast-logger, wai-cli…";
        description = "Inspired by Dropwizard, Magicbane provides a packaged framework for developing web services using the best available libraries, including Servant, ClassyPrelude, Aeson, EKG/monad-metrics, fast-logger/monad-logger, wai-cli and others.";
        buildType = "Simple";
      };
      components = {
        magicbane = {
          depends  = [
            hsPkgs.base
            hsPkgs.classy-prelude
            hsPkgs.transformers
            hsPkgs.errors
            hsPkgs.split
            hsPkgs.either
            hsPkgs.mtl
            hsPkgs.refined
            hsPkgs.lifted-async
            hsPkgs.monad-control
            hsPkgs.monad-metrics
            hsPkgs.monad-logger
            hsPkgs.fast-logger
            hsPkgs.ekg-core
            hsPkgs.ekg-wai
            hsPkgs.data-default
            hsPkgs.data-has
            hsPkgs.string-conversions
            hsPkgs.unordered-containers
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.aeson
            hsPkgs.aeson-qq
            hsPkgs.raw-strings-qq
            hsPkgs.wai
            hsPkgs.wai-middleware-metrics
            hsPkgs.wai-cli
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.network-uri
            hsPkgs.network
            hsPkgs.http-types
            hsPkgs.http-media
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-conduit
            hsPkgs.http-link-header
            hsPkgs.http-date
            hsPkgs.http-api-data
            hsPkgs.mime-types
            hsPkgs.envy
          ];
        };
      };
    }