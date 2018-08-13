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
        name = "dbus-core";
        version = "0.9.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "John Millikin 2010-2011";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/dbus-core/";
      url = "";
      synopsis = "Low-level D-Bus protocol implementation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dbus-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.libxml-sax)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.vector)
          (hsPkgs.xml-types)
        ];
      };
    };
  }