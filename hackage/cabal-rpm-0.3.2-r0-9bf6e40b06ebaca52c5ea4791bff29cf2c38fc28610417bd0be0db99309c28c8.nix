{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "cabal-rpm";
        version = "0.3.2";
      };
      license = "LicenseRef-GPL";
      copyright = "2007 Bryan O'Sullivan <bos@serpentine.com>";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/software/cabal-rpm/";
      url = "";
      synopsis = "RPM package builder for Haskell Cabal source packages.";
      description = "This package turns Haskell Cabal source packages into source and\nbinary RPM packages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-rpm" = {
          depends  = if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.Cabal)
              (hsPkgs.directory)
              (hsPkgs.filepath)
              (hsPkgs.old-locale)
              (hsPkgs.process)
              (hsPkgs.time)
              (hsPkgs.unix)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.Cabal)
              (hsPkgs.filepath)
              (hsPkgs.time)
              (hsPkgs.unix)
            ];
        };
      };
    };
  }