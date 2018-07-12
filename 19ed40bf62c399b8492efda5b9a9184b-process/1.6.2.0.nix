{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "process";
          version = "1.6.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Process libraries";
        description = "This package contains libraries for dealing with system processes.\n\nThe typed-process package is a more recent take on a process API,\nwhich uses this package internally. It features better binary\nsupport, easier concurrency, and a more composable API. You can\nread more about it at\n<https://haskell-lang.org/library/typed-process>.";
        buildType = "Configure";
      };
      components = {
        "process" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.deepseq
          ] ++ (if system.isWindows
            then [ hsPkgs.Win32 ]
            else [ hsPkgs.unix ]);
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.process
            ];
          };
        };
      };
    }