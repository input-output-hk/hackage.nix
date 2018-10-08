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
        name = "pier";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "judah.jacobson@gmail.com";
      author = "";
      homepage = "https://github.com/judah/pier#readme";
      url = "";
      synopsis = "Yet another Haskell build system.";
      description = "Pier is a command-line tool for building Haskell projects.  It is\nsimilar in purpose to <https://www.haskellstack.org Stack>,\nbut explores a different design:\n\n* Pier implements the fine-grained Haskell build logic from (nearly)\nscratch.  In contrast, Stack relies on Cabal to implement most of its\nbuild steps, giving it a more coarse control over the build.\n* Pier uses general-purpose libraries for implementing build systems, namely\n<https://shakebuild.com Shake> and <https://hackage.haskell.org/package/pier-core pier-core>.\n\nFor more information, see the official <https://github.com/judah/pier/blob/master/Readme.md documentation>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pier" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-orphans)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pier-core)
            (hsPkgs.shake)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }