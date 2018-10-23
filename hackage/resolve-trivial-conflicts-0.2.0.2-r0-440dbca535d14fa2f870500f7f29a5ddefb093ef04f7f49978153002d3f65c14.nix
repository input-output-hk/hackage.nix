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
        name = "resolve-trivial-conflicts";
        version = "0.2.0.2";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/ElastiLotem/resolve-trivial-conflicts";
      url = "";
      synopsis = "Remove trivial conflict markers in a git repository";
      description = "Remove trivial conflict markers in a git repository";
      buildType = "Simple";
    };
    components = {
      exes = {
        "resolve-trivial-conflicts" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.Diff)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }