{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "git-fmt";
        version = "0.4.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "public@hjwylde.com";
      author = "Henry J. Wylde";
      homepage = "https://github.com/hjwylde/git-fmt";
      url = "";
      synopsis = "Custom git command for formatting code.";
      description = "git-fmt provides a wrapper around omnifmt, an automatic code formatter.\nIt adds the ability to operate on specific tracked files in the repository.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "git-fmt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.extra)
            (hsPkgs.fast-logger)
            (hsPkgs.filepath)
            (hsPkgs.omnifmt)
            (hsPkgs.mtl)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-parallel)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }