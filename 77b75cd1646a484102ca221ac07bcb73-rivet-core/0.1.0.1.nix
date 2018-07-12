{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rivet-core";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbp@dbpmail.net";
        author = "Daniel Patterson";
        homepage = "https://github.com/dbp/rivet";
        url = "";
        synopsis = "Core library for project management tool.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "rivet-core" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.shake
            hsPkgs.configurator
            hsPkgs.text
            hsPkgs.process
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.template-haskell
            hsPkgs.directory
            hsPkgs.directory-tree
            hsPkgs.filepath
            hsPkgs.postgresql-simple
          ];
        };
      };
    }