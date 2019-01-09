{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "jmacro-rpc"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "http://hub.darcs.net/gershomb/jmacro";
      url = "";
      synopsis = "JSON-RPC clients and servers using JMacro, and evented client-server Reactive Programming.";
      description = "Base jmacro-rpc package. Provides server-independent functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.jmacro)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.split)
          (hsPkgs.blaze-html)
          (hsPkgs.contravariant)
          (hsPkgs.scientific)
          ];
        };
      };
    }