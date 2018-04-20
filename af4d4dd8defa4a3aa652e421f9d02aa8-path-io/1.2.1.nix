{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "path-io";
          version = "1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@opmbx.org>";
        author = "Mark Karpov <markkarpov@opmbx.org>";
        homepage = "https://github.com/mrkkrp/path-io";
        url = "";
        synopsis = "Interface to ‘directory’ package for users of ‘path’";
        description = "Interface to ‘directory’ package for users of ‘path’.";
        buildType = "Simple";
      };
      components = {
        path-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.path
            hsPkgs.temporary
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix-compat
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.path
              hsPkgs.path-io
              hsPkgs.unix-compat
            ];
          };
        };
      };
    }