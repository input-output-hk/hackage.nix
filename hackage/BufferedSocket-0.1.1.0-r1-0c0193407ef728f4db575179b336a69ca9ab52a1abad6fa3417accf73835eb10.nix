{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "BufferedSocket";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tomas.o.more@gmail.com";
      author = "Tomas Möre";
      homepage = "";
      url = "";
      synopsis = "A socker wrapper that makes the IO of sockets much cleaner";
      description = "The idea of a \"BufferedSocket\" is that reading from a network socket should be really easy and handy. BufferedSockets is an attempt to do just that whilst being space-time efficient. Having \"in app\" buffers also makes it easy for the buffered socket to read data without taking the data out of the buffer thus giving us the ability to look for patterns and read excess data without having to \"take out of the reading queue\". github link https://github.com/black0range/BufferedSocket";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.network)
        ];
      };
    };
  }