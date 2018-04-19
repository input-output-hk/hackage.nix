{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gitlib-utils";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@fpcomplete.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "Generic utility functions for working with Git repositories";
        description = "@gitlib@ is a high-level, lazy and conduit-aware set of abstractions for\nprogramming with Git types.";
        buildType = "Simple";
      };
      components = {
        gitlib-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.gitlib
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.data-default
            hsPkgs.failure
            hsPkgs.hex
            hsPkgs.lifted-base
            hsPkgs.system-fileio
            hsPkgs.system-filepath
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }