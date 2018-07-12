{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HTTP-Simple";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@fastmail.fm";
        author = "brad clawsie";
        homepage = "http://www.b7j0c.org/content/haskell-http.html";
        url = "";
        synopsis = "DEPRECATED Enable simple wrappers to Network.HTTP";
        description = "DEPRECATED Enable simple wrappers to Network.HTTP";
        buildType = "Simple";
      };
      components = {
        "HTTP-Simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.HTTP
          ];
        };
      };
    }