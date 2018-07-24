{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "haskus-system-build";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Sylvain Henry 2018";
        maintainer = "sylvain@haskus.fr";
        author = "Sylvain Henry";
        homepage = "http://www.haskus.org/system";
        url = "";
        synopsis = "Haskus system build tool";
        description = "Build tool to use with haskus-system.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "haskus-system-build" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.yaml
              hsPkgs.text
              hsPkgs.haskus-utils
              hsPkgs.optparse-simple
              hsPkgs.optparse-applicative
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.http-conduit
              hsPkgs.conduit
            ];
          };
        };
      };
    }