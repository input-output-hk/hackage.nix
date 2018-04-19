{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "sphinx";
          version = "0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Tupil";
        maintainer = "Greg Weber <greg@gregweber.info>";
        author = "Chris Eidhof <ce+sphinx@tupil.com>";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings to the Sphinx full-text searching deamon.";
        description = "Haskell bindings to the Sphinx full-text searching deamon. Compatible with sphinx version 1.1";
        buildType = "Simple";
      };
      components = {
        sphinx = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.data-binary-ieee754
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.haskell98
            hsPkgs.xml
          ];
        };
      };
    }