{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-state-machine"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017-2018, ATS Advanced Telematic Systems GmbH;\n2018, HERE Europe B.V.";
      maintainer = "Stevan Andjelkovic <stevan.andjelkovic@here.com>";
      author = "Stevan Andjelkovic";
      homepage = "https://github.com/advancedtelematic/quickcheck-state-machine#readme";
      url = "";
      synopsis = "Test monadic programs using state machine based models";
      description = "See README at <https://github.com/advancedtelematic/quickcheck-state-machine#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.lifted-async)
          (hsPkgs.matrix)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.pretty-show)
          (hsPkgs.QuickCheck)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.tree-diff)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "quickcheck-state-machine-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filelock)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.lifted-async)
            (hsPkgs.matrix)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.persistent)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.persistent-template)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.quickcheck-state-machine)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.servant-server)
            (hsPkgs.stm)
            (hsPkgs.strict)
            (hsPkgs.string-conversions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.tree-diff)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }