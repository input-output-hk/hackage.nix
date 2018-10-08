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
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "judah.jacobson@gmail.com";
      author = "";
      homepage = "https://github.com/judah/pier#readme";
      url = "";
      synopsis = "Yet another Haskell build system.";
      description = "A build system for Haskell projects, built on top of [shake](http://shakebuild.com).";
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