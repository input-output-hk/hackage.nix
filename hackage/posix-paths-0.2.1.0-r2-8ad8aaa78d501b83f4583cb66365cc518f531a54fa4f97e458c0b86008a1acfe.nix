{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "posix-paths"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jwlato@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "POSIX filepath/directory functionality";
      description = "This package gives access to certain POSIX-based Filepath/Directory\nservices.\n\nThe package is not supported under Windows (except under Cygwin).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.unix) ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.posix-paths)
            (hsPkgs.doctest)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "bench.hs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.posix-paths)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }