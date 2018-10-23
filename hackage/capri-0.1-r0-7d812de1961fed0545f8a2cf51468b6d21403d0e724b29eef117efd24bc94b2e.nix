{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "capri";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "golubovsky@gmail.com";
      author = "Dmitry Golubovsky";
      homepage = "";
      url = "";
      synopsis = "A simple wrapper over cabal-install to operate in project-private mode.";
      description = "Capri (abbreviation of CAbal PRIvate) is a wrapper program on top of\ncabal-install to operate it in project-private mode. In this mode,\nthere is no global or user package databases; only one package\ndatabase is defined, private to the project, located under the root\ndirectory of a project.\n\nCapri invokes cabal-install and ghc-pkg in the way that only project's\nprivate package database is visible. Starting with minimally required\nset of packages, all necessary dependencies will be installed into\nthat database, not affecting user or global databases.\n\nCapri is mainly intended to build executable programs. It depends\non certain features of GHC, and is not usable with other Haskell\ncompilers.\n\nFurther reading: <http://www.haskell.org/haskellwiki/Capri>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "capri" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }