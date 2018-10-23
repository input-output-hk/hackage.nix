{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "EventSocket";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vulpyne+haskelleventsocket@teliax.com";
      author = "Vulpyne @ Teliax";
      homepage = "";
      url = "";
      synopsis = "Interfaces with FreeSwitch Event Socket.";
      description = "Interfaces with FreeSwitch Event Socket. This should be considered an alpha release and has not been tested extensively.";
      buildType = "Simple";
    };
    components = {
      "EventSocket" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.haskell98)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }