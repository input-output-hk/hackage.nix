{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "spy";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "stefan@saasen.me";
        author = "Stefan Saasen";
        homepage = "https://bitbucket.org/ssaasen/spy";
        url = "";
        synopsis = "A compact file system watcher for Mac OS X, Linux and Windows";
        description = "Spy can be used to watch for file changes and to either report the modified files or run a command if files change. It can be used to trigger compilation, to run tests or start a deployment.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "spy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fsnotify
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.filemanip
              hsPkgs.process
              hsPkgs.json
              hsPkgs.directory
              hsPkgs.system-filepath
              hsPkgs.time
            ];
          };
        };
        tests = {
          "spy-testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.fsnotify
              hsPkgs.cmdargs
              hsPkgs.filepath
              hsPkgs.filemanip
              hsPkgs.process
              hsPkgs.json
              hsPkgs.directory
              hsPkgs.system-filepath
              hsPkgs.time
            ];
          };
        };
      };
    }