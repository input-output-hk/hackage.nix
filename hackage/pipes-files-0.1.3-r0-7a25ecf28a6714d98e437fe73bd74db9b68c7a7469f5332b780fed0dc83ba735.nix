{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { leafopt = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-files";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 (c) John Wiegley. All Rights Reserved.";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/pipes-files";
      url = "";
      synopsis = "Fast traversal of directory trees using pipes";
      description = "Fast traversal of directory trees using pipes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.exceptions)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.semigroups)
          (hsPkgs.free)
          (hsPkgs.pipes)
          (hsPkgs.directory)
          (hsPkgs.unix)
          (hsPkgs.hierarchy)
          (hsPkgs.regex-posix)
          (hsPkgs.unix-compat)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.posix-paths)
          (hsPkgs.pipes-safe)
          (hsPkgs.logict)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.semigroups)
            (hsPkgs.text)
          ];
        };
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hierarchy)
            (hsPkgs.pipes-files)
            (hsPkgs.pipes)
            (hsPkgs.directory)
            (hsPkgs.unix)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.logict)
          ];
        };
        "find-hs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.pipes)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.pipes-safe)
            (hsPkgs.pipes-files)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }