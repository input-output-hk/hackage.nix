{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-extra";
          version = "0.1.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://bitbucket.org/tdammers/json-extra";
        url = "";
        synopsis = "Utility functions to extend Aeson";
        description = "";
        buildType = "Simple";
      };
      components = {
        json-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.data-default
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.unordered-containers
            hsPkgs.yaml
          ];
        };
      };
    }