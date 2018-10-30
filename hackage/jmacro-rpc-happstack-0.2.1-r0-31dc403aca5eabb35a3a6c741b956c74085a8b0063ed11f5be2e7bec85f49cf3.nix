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
      specVersion = "1.6";
      identifier = {
        name = "jmacro-rpc-happstack";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gershomb@gmail.com";
      author = "Gershom Bazerman";
      homepage = "http://patch-tag.com/r/gershomb/jmacro-rpc";
      url = "";
      synopsis = "Happstack backend for jmacro-rpc";
      description = "Provides functions for serving jmacro-rpc json rpcs and panels from Happstack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.jmacro)
          (hsPkgs.happstack-server)
          (hsPkgs.jmacro-rpc)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.blaze-html)
        ];
      };
    };
  }