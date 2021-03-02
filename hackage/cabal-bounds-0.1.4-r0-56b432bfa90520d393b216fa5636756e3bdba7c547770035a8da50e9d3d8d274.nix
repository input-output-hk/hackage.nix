{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabal-bounds"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A command line program for managing the bounds/versions of the dependencies in a cabal file.";
      description = "If you have several cabalized projects, then it can be quite time consuming to keep the\nbounds of your dependencies up to date. Especially if you're following the, then you want\nto raise your upper bounds from time to time, to allow the building with newer versions\nof the dependencies.\n`cabal-bounds` tries to automate this update process to some degree. So a typical update process might look like:\n\$> # update the version infos of all libraries\n\$> cabal update\n\$> # drops the upper bound of all dependencies in 'myproject.cabal', most likely you want to ignore 'base'\n\$> cabal-bounds drop --upper --ignore=base myproject.cabal\n\$> # create a cabal sandbox for building of 'myproject'\n\$> cabal sandbox init\n\$> # build 'myproject'\n\$> cabal install\n\$> # update the upper bound of all dependencies in 'myproject.cabal' by the cabal build information\n\$> cabal-bounds update --upper --ignore=base myproject.cabal dist/dist-sandbox-*/setup-config\nExamples\n========\nThe `=>` shows what the result is of the operation for every dependency. Left is the dependency before\ncalling the command, right the one after calling.\n\$> cabal drop myproject.cabal\nlens >=4.0.1 && <4.1   =>   lens\n\$> cabal drop --upper myproject.cabal\nlens >=4.0.1 && <4.1   =>   lens >=4.0.1\nIf the cabal build (the setup-config) uses `lens 4.1.2`, then the results of the `update` command would be:\n\$> cabal update myproject.cabal setup-config\nlens >=4.0.1 && <4.1   =>   lens >=4.1.2 && <4.2\nlens                   =>   lens >=4.1.2 && <4.2\n\$> cabal update --lower myproject.cabal setup-config\nlens >=4.0.1 && <4.1   =>   lens >=4.1.2\nlens <4.1              =>   lens >=4.1.2\nlens                   =>   lens >=4.1.2\n\$> cabal update --upper myproject.cabal setup-config\nlens >=4.0.1 && <4.1   =>   lens >=4.0.1 && <4.2\nlens >=4.0.1           =>   lens >=4.0.1 && <4.2\nlens                   =>   lens >=4.1.2 && <4.2\nInstallation\n============\nYou have to ensure, that the `Cabal` library of `cabal-bounds` matches the one used by the `cabal` binary:\n\$> cabal --version\ncabal-install version 1.18.0.2\nusing version 1.18.1 of the Cabal library\n\$> cabal install --constraint=\"Cabal == 1.18.1\" cabal-bounds\nIf you update the `cabal` binary and the used `Cabal` library changes, then you have to rebuild `cabal-bounds`.\nCommand Line Usage\n==================\n\$> cabal-bounds --help\ncabal-bounds [COMMAND] ... [OPTIONS]\nA command line program for managing the bounds/versions of the dependencies\nin a cabal file.\nCommon flags:\n-O --only=ITEM             Only the bounds of the dependency are modified.\n-I --ignore=ITEM           This dependency is ignored, not modified in any\nway.\n-o --outputCabalFile=ITEM  Save modified cabal file to file, if empty, the\ncabal file is modified inplace.\n-h --help                  Display help message\n-v --version               Print version information\ncabal-bounds drop [OPTIONS] CABAL-FILE\n-U --upper                 Only the upper bound is dropped, otherwise both\n- the lower and upper - bounds are dropped.\n-l --library               Only the bounds of the library are dropped.\n-e --executable=ITEM       Only the bounds of the executable are dropped.\n-t --testsuite=ITEM        Only the bounds of the test suite are dropped.\n-b --benchmark=ITEM        Only the bounds of the benchmark are dropped.\ncabal-bounds update [OPTIONS] CABAL-FILE SETUP-CONFIG-FILE\n-L --lower                 Only the lower bound is updated.\n-U --upper                 Only the upper bound is updated.\n-l --library               Only the bounds of the library are updated.\n-e --executable=ITEM       Only the bounds of the executable are updated.\n-t --testsuite=ITEM        Only the bounds of the test suite are updated.\n-b --benchmark=ITEM        Only the bounds of the benchmark are updated.\nIssues\n======\nPerhaps the currently most annoying thing is, that you have to live with the reformating of your\n`cabal` file done by the pretty printer of the `Cabal` library.\nTo reformat your `cabal` file without changing any bounds you can call `cabal-bounds` with the name of\na section that isn't present in the `cabal` file:\n\$> cabal-bounds drop --executable=blub myproject.cabal";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
        buildable = true;
        };
      exes = {
        "cabal-bounds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cabal-bounds-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."cabal-bounds" or (errorHandler.buildDepError "cabal-bounds"))
            ];
          buildable = true;
          };
        };
      };
    }