{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "singleton-nats";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 András Kovács";
        maintainer = "puttamalac@gmail.com";
        author = "András Kovács";
        homepage = "";
        url = "";
        synopsis = "Unary natural numbers relying on the singletons infrastructure.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "singleton-nats" = {
          depends  = [
            hsPkgs.base
            hsPkgs.singletons
          ];
        };
      };
    }