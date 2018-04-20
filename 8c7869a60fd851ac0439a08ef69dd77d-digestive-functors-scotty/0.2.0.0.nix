{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "digestive-functors-scotty";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "macs.martins@gmail.com";
        author = "Mārtiņš Mačs";
        homepage = "https://bitbucket.org/wniare/digestive-functors-scotty";
        url = "";
        synopsis = "Scotty backend for the digestive-functors library";
        description = "Scotty backend for the digestive-functors library";
        buildType = "Simple";
      };
      components = {
        digestive-functors-scotty = {
          depends  = [
            hsPkgs.base
            hsPkgs.digestive-functors
            hsPkgs.scotty
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.wai
            hsPkgs.wai-extra
          ];
        };
      };
    }