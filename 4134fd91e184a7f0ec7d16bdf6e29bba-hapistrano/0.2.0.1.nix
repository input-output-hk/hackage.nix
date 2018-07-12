{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hapistrano";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "2015 Stack Builders Inc.";
        maintainer = "justin@stackbuilders.com";
        author = "Justin Leitgeb";
        homepage = "https://github.com/stackbuilders/hapistrano";
        url = "";
        synopsis = "A deployment library for Haskell applications";
        description = "\nHapistrano makes it easy to reliably deploy Haskell applications\nto a server.\n\nFollowing popular libraries like Ruby's <http://capistranorb.com/\nCapistrano>, Hapistrano does the work of building the application\nwith dependencies into a distinct folder, and then atomically moves\na symlink to the latest complete build.\n\nThis allows for atomic switchovers to new application code after the\nbuild is complete. Rollback is even simpler, since Hapistrano can\njust point the `current` symlink to the previous release.\n\nSee <https://github.com/stackbuilders/hapistrano the project readme on GitHub>\nfor more information.\n";
        buildType = "Simple";
      };
      components = {
        "hapistrano" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.either
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.base-compat
          ];
        };
        exes = {
          "hap" = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.process
              hsPkgs.either
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.base-compat
            ];
          };
        };
        tests = {
          "hapistrano-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.process
              hsPkgs.either
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.filepath
              hsPkgs.base-compat
              hsPkgs.hspec
              hsPkgs.temporary
              hsPkgs.directory
            ];
          };
        };
      };
    }