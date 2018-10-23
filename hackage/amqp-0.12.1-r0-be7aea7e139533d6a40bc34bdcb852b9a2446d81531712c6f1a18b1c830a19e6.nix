{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "amqp";
        version = "0.12.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Holger Reinhardt <hreinhardt@gmail.com>";
      author = "Holger Reinhardt";
      homepage = "https://github.com/hreinhardt/amqp";
      url = "";
      synopsis = "Client library for AMQP servers (currently only RabbitMQ)";
      description = "Client library for AMQP servers (currently only RabbitMQ)\n\nChangelog: <https://github.com/hreinhardt/amqp/blob/master/README.md>";
      buildType = "Simple";
    };
    components = {
      "amqp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.clock)
          (hsPkgs.monad-control)
          (hsPkgs.connection)
          (hsPkgs.vector)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [ (hsPkgs.network) ]);
      };
      exes = {
        "amqp-builder" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xml)
            (hsPkgs.containers)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.text)
            (hsPkgs.split)
            (hsPkgs.clock)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.connection)
            (hsPkgs.vector)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [ (hsPkgs.network) ]);
        };
      };
    };
  }