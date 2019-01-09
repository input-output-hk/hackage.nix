{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-transport-composed";
        version = "0.2.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Well-Typed LLP";
      maintainer = "edsko@well-typed.com, watson.timothy@gmail.com";
      author = "Edsko de Vries";
      homepage = "http://haskell-distributed.github.com";
      url = "";
      synopsis = "Compose network transports";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network-transport)
          ];
        };
      };
    }