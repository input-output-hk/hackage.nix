{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "engine-io"; version = "1.2.16"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/engine.io";
      url = "";
      synopsis = "A Haskell implementation of Engine.IO";
      description = "This library provides a Haskell implementation of\n<https://github.com/Automattic/engine.io Engine.IO>, a library for real-time\nclient-server communication on the web. Engine.IO works with old browsers via\nXHR long-polling, and seamlessy upgrades to web sockets. This implementation\nsupports the majority of the Engine.IO protocol, including text and binary\npackets and the upgrading protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.free)
          (hsPkgs.monad-loops)
          (hsPkgs.mwc-random)
          (hsPkgs.stm)
          (hsPkgs.stm-delay)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.websockets)
          ];
        };
      };
    }