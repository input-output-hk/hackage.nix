{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "configuration";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Hiromi ISHII 2011";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "";
        url = "";
        synopsis = "Simple data type for application configuration.";
        description = "Simple data type to store Typeable values.";
        buildType = "Simple";
      };
      components = {
        "configuration" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }