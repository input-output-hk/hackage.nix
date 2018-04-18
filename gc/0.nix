{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
      test-hlint = true;
    } // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "gc";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/gc/";
        url = "";
        synopsis = "Poor Richard's Memory Manager";
        description = "This package implements a form of <http://www.cs.canisius.edu/~hertzm/prmm-ismm-2011.pdf Poor Richard's Memory Manager>\nby Hertz, Kane, Keudel, Bai, Ding, Gu and Bard in user-space in GHC.\n\nUsage:\n\n> import System.Mem.Manager\n> main = do\n>   _ <- selfishManager\n>   ...\n\nNow, the background thread that was spawned by @selfishManager@ will watch for signs that the host operating system\nis starting to cause the current process to page out to disk and respond with more aggressive garbage collection.\n\nThis empowers your code to try to avoid the inevitable death spiral that follows when GC has to happen with paged out data.";
        buildType = "Custom";
      };
      components = {
        gc = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          doctests = {
            depends  = optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.parallel
            ];
          };
          hlint = {
            depends  = optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }