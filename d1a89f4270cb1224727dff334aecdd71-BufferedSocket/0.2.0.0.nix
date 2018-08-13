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
        name = "BufferedSocket";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tomas.o.more@gmail.com";
      author = "Tomas Möre";
      homepage = "";
      url = "";
      synopsis = "A socker wrapper that makes the IO of sockets much cleaner";
      description = "The idea of a \"BufferedSocket\" is that reading from a network socket should be really easy and handy. BufferedSockets is an attempt to do just that whilst beeing space-time efficient. Having \"in app\" buffers also makes it easy for the buffered socket to read data without taking the data out of the buffer thus giving us the ability to look for patterns and read exess data without having to \"take out of the reading queue\".";
      buildType = "Simple";
    };
    components = {
      "BufferedSocket" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.network)
        ];
      };
    };
  }