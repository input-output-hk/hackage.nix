{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "amqp";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Holger Reinhardt <hreinhardt@gmail.com>";
      author = "Holger Reinhardt";
      homepage = "https://github.com/hreinhardt/amqp";
      url = "";
      synopsis = "Client library for AMQP servers (currently only RabbitMQ)";
      description = "Client library for AMQP servers (currently only RabbitMQ)";
      buildType = "Simple";
    };
    components = {
      "amqp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.network)
        ];
      };
    };
  }