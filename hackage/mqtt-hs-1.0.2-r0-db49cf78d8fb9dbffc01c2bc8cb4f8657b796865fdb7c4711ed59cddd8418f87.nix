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
        name = "mqtt-hs";
        version = "1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2014-2016 Lukas Braun";
      maintainer = "Lukas Braun <koomi+mqtt@hackerspace-bamberg.de>";
      author = "Lukas Braun <koomi+mqtt@hackerspace-bamberg.de>";
      homepage = "http://github.com/k00mi/mqtt-hs";
      url = "";
      synopsis = "A MQTT client library.";
      description = "A library to communicate with MQTT brokers.\nSee the 'Network.MQTT' module for documentation and the project repository\nfor some <https://github.com/k00mi/mqtt-hs/blob/master/examples examples>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.network)
          (hsPkgs.singletons)
          (hsPkgs.stm)
          (hsPkgs.monad-loops)
        ];
      };
    };
  }