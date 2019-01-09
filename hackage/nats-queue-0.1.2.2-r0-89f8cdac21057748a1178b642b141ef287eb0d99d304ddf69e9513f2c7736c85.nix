{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nats-queue"; version = "0.1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephen OBrien <wayofthepie@gmail.com>";
      author = "Ondrej Palkovsky";
      homepage = "";
      url = "";
      synopsis = "Haskell API for NATS messaging system";
      description = "This library is a Haskell driver for NATS <http://nats.io>.\nNATS is a fast and lightweight publish-subscribe messaging system.\nThis version supports authentication but does not support SSL as the current\nversion of gnatsd (go server 0.5.6) does not support it either.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.dequeue)
          (hsPkgs.random)
          (hsPkgs.network-uri)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.async)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nats-queue)
            (hsPkgs.hspec)
            (hsPkgs.network)
            (hsPkgs.dequeue)
            (hsPkgs.random)
            (hsPkgs.network-uri)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            ];
          };
        };
      };
    }