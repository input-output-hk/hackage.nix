{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "magicbane";
        version = "0.4.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2017-2018 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/magicbane#readme";
      url = "";
      synopsis = "A web framework that integrates Servant, RIO, EKG, fast-logger, wai-cli…";
      description = "Inspired by Dropwizard, Magicbane provides a packaged framework for developing web services using the best available libraries, including Servant, RIO, Aeson, EKG/monad-metrics, fast-logger, wai-cli and others.";
      buildType = "Simple";
    };
    components = {
      "magicbane" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-qq)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.data-has)
          (hsPkgs.ekg-core)
          (hsPkgs.ekg-wai)
          (hsPkgs.envy)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-link-header)
          (hsPkgs.http-types)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-metrics)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.refined)
          (hsPkgs.rio)
          (hsPkgs.rio-orphans)
          (hsPkgs.servant-server)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.wai-cli)
          (hsPkgs.wai-middleware-metrics)
        ];
      };
    };
  }