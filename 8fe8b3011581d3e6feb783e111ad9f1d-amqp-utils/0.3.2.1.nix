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
      specVersion = "1.10";
      identifier = {
        name = "amqp-utils";
        version = "0.3.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fd@taz.de";
      author = "Frank Doepper";
      homepage = "";
      url = "";
      synopsis = "Generic Haskell AMQP Consumer";
      description = "AMQP consumer which can\ncreate a temporary queue and attach it to an exchange, or\nattach to an existing queue;\ndisplay header and body info;\nsave message bodies to files;\ncall a callback script.\nAMQP publisher with file, line-by-line and\nhotfolder capabilities.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "konsum" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.data-default-class)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.x509-system)
            (hsPkgs.tls)
            (hsPkgs.amqp)
          ];
        };
        "agitprop" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.data-default-class)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.x509-system)
            (hsPkgs.tls)
            (hsPkgs.amqp)
            (hsPkgs.unix)
            (hsPkgs.hinotify)
            (hsPkgs.magic)
          ];
        };
      };
    };
  }