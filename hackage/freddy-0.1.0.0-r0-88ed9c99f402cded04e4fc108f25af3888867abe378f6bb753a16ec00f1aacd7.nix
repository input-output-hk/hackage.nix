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
        name = "freddy";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "indrek@urgas.eu";
      author = "Indrek Juhkam";
      homepage = "https://github.com/salemove/freddy-hs";
      url = "";
      synopsis = "RabbitMQ Messaging API supporting request-response";
      description = "";
      buildType = "Simple";
    };
    components = {
      "freddy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.amqp)
          (hsPkgs.broadcast-chan)
          (hsPkgs.uuid)
          (hsPkgs.random)
          (hsPkgs.data-default)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.amqp)
            (hsPkgs.broadcast-chan)
            (hsPkgs.uuid)
            (hsPkgs.random)
            (hsPkgs.data-default)
            (hsPkgs.async)
          ];
        };
      };
    };
  }