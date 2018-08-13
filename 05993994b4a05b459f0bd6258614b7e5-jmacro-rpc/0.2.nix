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
        name = "jmacro-rpc";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "http://patch-tag.com/r/gershomb/jmacro-rpc";
      url = "";
      synopsis = "JSON-RPC clients and servers using JMacro, and evented client-server FRP.";
      description = "Base jmacro-rpc package. Provides server-independent functions.";
      buildType = "Simple";
    };
    components = {
      "jmacro-rpc" = {
        depends  = [
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
        ];
      };
    };
  }