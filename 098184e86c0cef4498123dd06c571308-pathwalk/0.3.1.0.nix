{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pathwalk";
          version = "0.3.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "xena@yolo-swag.com";
        author = "Christine Dodrill";
        homepage = "https://github.com/Xe/pathwalk";
        url = "";
        synopsis = "Path walking utilities for Haskell programs";
        description = "\"System.Directory.PathWalk\" is an implementation of Python's excellent\nos.walk function.  Given a root directory, it recursively scans all\nsubdirectories, calling a callback with directories and files it finds.\nImportantly, it calls the callback as soon as it finishes scanning each\ndirectory to allow the caller to begin processing results immediately.\n\nMaximum memory usage is O(N+M) where N is the depth of the tree and M\nis the maximum number of entries in a particular directory.\n\n> import System.Directory.PathWalk\n>\n> pathWalk \"some/directory\" \$ \\root dirs files -> do\n>   forM_ files \$ \\file ->\n>     when (\".hs\" `isSuffixOf` file) \$ do\n>       putStrLn \$ joinPath [root, file]";
        buildType = "Simple";
      };
      components = {
        pathwalk = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.transformers
          ];
        };
        tests = {
          basic = {
            depends  = [
              hsPkgs.base
              hsPkgs.pathwalk
            ];
          };
          stoprecursing = {
            depends  = [
              hsPkgs.base
              hsPkgs.pathwalk
            ];
          };
          accumulate = {
            depends  = [
              hsPkgs.base
              hsPkgs.pathwalk
            ];
          };
          lazy = {
            depends  = [
              hsPkgs.base
              hsPkgs.pathwalk
            ];
          };
        };
      };
    }