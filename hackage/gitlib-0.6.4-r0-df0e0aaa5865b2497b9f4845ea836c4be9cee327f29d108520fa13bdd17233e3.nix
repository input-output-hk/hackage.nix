{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gitlib"; version = "0.6.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@fpcomplete.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Higher-level types for working with hlibgit2";
      description = "@gitlib@ is a high-level, lazy and conduit-aware type wrapper around the\nlibgit2 C library (<http://libgit2.github.com>).  The aim is both\ntype-safety and convenience of use for Haskell users, combined with high\nperformance and minimal memory footprint by taking advantage of Haskell's\nlaziness and the conduit library's deterministic resource cleanup.\n\nFor further information, as well as typical use cases, see\n\"Data.Git.Tutorial\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hlibgit2)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.parallel-io)
          (hsPkgs.stringable)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.text-icu)
          (hsPkgs.time)
          ];
        };
      tests = {
        "smoke" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gitlib)
            (hsPkgs.hlibgit2)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.parallel-io)
            (hsPkgs.stringable)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }