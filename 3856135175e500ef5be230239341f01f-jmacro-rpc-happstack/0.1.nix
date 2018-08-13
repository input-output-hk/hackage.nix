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
        name = "jmacro-rpc-happstack";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "http://patch-tag.com/r/gershomb/jmacro-rpc";
      url = "";
      synopsis = "Happstack backend for jmacro-rpc";
      description = "Provides functions for serving jmacro-rpc json rpcs from Happstack.";
      buildType = "Simple";
    };
    components = {
      "jmacro-rpc-happstack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.jmacro)
          (hsPkgs.happstack-server)
          (hsPkgs.jmacro-rpc)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }