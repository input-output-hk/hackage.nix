{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "magicbane"; version = "0.1.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "2017 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/magicbane#readme";
      url = "";
      synopsis = "A web framework that integrates Servant, ClassyPrelude, EKG, fast-logger, wai-cli…";
      description = "Inspired by Dropwizard, Magicbane provides a packaged framework for developing web services using the best available libraries, including Servant, ClassyPrelude, Aeson, EKG/monad-metrics, fast-logger/monad-logger, wai-cli and others.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-qq)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.data-default)
          (hsPkgs.data-has)
          (hsPkgs.ekg-core)
          (hsPkgs.ekg-wai)
          (hsPkgs.envy)
          (hsPkgs.errors)
          (hsPkgs.fast-logger)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-date)
          (hsPkgs.http-link-header)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.lifted-async)
          (hsPkgs.mime-types)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-metrics)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.refined)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.wai-cli)
          (hsPkgs.wai-middleware-metrics)
          ];
        };
      };
    }