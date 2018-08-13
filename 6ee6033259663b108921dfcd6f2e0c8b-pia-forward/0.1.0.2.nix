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
        name = "pia-forward";
        version = "0.1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright 2015 Echo Nolan";
      maintainer = "echo@echonolan.net";
      author = "Echo Nolan";
      homepage = "https://github.com/enolan/pia-forward";
      url = "";
      synopsis = "Set up port forwarding with the Private Internet Access\nVPN service.";
      description = "Sets up and maintains a forwarded port.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pia-forward" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.network-info)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.time)
            (hsPkgs.xdg-basedir)
          ];
        };
      };
    };
  }