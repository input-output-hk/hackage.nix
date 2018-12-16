{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "holy-project";
        version = "0.1.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Yann.Esposito@gmail.com";
      author = "Yann Esposito (Yogsototh)";
      homepage = "http://github.com/yogsototh/holy-project";
      url = "";
      synopsis = "Start your Haskell project with cabal, git and tests.";
      description = "Holy Project is an application wich ask the user\nsome questions and create files to help you\nstarting a new Haskell project.\nThere are example for tests using HUnit and SmallCheck\nIt initializes git, use cabal sandboxes, and provide\ntwo useful scripts: \\\"auto-update\\\" and \\\"interact\\\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.split)
          (hsPkgs.hastache)
          (hsPkgs.bytestring)
          (hsPkgs.syb)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.http-conduit)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.aeson)
          (hsPkgs.text)
        ];
      };
      exes = {
        "holy-project" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal)
            (hsPkgs.split)
            (hsPkgs.hastache)
            (hsPkgs.bytestring)
            (hsPkgs.syb)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.http-conduit)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.aeson)
            (hsPkgs.text)
          ];
        };
        "test-holy-project" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.holy-project)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
          ];
        };
      };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.holy-project)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
          ];
        };
      };
    };
  }