{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pretty-display";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2016 Justin Sermeno";
      maintainer = "Justin Sermeno";
      author = "Justin Sermeno";
      homepage = "https://github.com/githubuser/pretty-display";
      url = "";
      synopsis = "Typeclass for human-readable display";
      description = "Provides a typeclass and tools for working interactively within ghci.";
      buildType = "Simple";
    };
    components = {
      "pretty-display" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.pretty-show)
        ];
      };
      exes = {
        "pretty-display-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pretty-display)
            (hsPkgs.pretty-show)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
      };
      tests = {
        "pretty-display-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pretty-display)
          ];
        };
      };
    };
  }