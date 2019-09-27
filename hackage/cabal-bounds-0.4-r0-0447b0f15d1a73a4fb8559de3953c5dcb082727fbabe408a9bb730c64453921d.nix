let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "cabal-bounds"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel.trstenjak@gmail.com";
      author = "Daniel Trstenjak";
      homepage = "";
      url = "";
      synopsis = "A command line program for managing the bounds/versions of the dependencies in a cabal file.";
      description = "'cabal-bounds' is able to do two things:\n\n* drop the bounds of the dependencies in the cabal file\n\n* update the bounds of the dependencies in the cabal file using the cabal build information\n\n\n\n/Example: Raise the upper Bounds/\n\n\nIf you have several cabalized projects, then it can be quite time consuming to keep the\nbounds of your dependencies up to date. Especially if you're following the package versioning\npolicy, then you want to raise your upper bounds from time to time, to allow the building with\nnewer versions of the dependencies.\n\n'cabal-bounds' tries to automate this update process to some degree. So a typical update process might look like:\n\n> # update the version infos of all libraries\n> \$> cabal update\n>\n> # drops the upper bound of all dependencies in 'myproject.cabal',\n> # most likely you want to ignore 'base'\n> \$> cabal-bounds drop --upper --ignore=base myproject.cabal\n>\n> # create a cabal sandbox for building of 'myproject'\n> \$> cabal sandbox init\n>\n> # build 'myproject'\n> \$> cabal install\n>\n> # update the upper bound of all dependencies in 'myproject.cabal'\n> # by the cabal build information\n> \$> cabal-bounds update --upper --ignore=base myproject.cabal dist/dist-sandbox-*/setup-config\n\n\n\n/Example: Bound Changes/\n\n\nThe '=>' shows what the result is of the operation for every dependency. Left is the dependency before\ncalling the command, right the one after calling.\n\n> \$> cabal-bounds drop ...\n> lens >=4.0.1 && <4.1   =>   lens\n>\n> \$> cabal-bounds drop --upper ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.0.1\n\nIf the cabal build (the setup-config) uses 'lens 4.1.2', then the results of the 'update' command would be:\n\n> \$> cabal-bounds update ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.1.2 && <4.2\n> lens                   =>   lens >=4.1.2 && <4.2\n>\n> \$> cabal-bounds update --lower ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.1.2\n> lens <4.1              =>   lens >=4.1.2\n> lens                   =>   lens >=4.1.2\n>\n> \$> cabal-bounds update --upper ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.0.1 && <4.2\n> lens >=4.0.1           =>   lens >=4.0.1 && <4.2\n> lens                   =>   lens >=4.1.2 && <4.2\n\nYou can also specify which component of the version number should be updated:\n\n> \$> cabal-bounds update --lowercomp=minor ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.1.2\n>\n> \$> cabal-bounds update --lowercomp=major2 ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.1\n>\n> \$> cabal-bounds update --lowercomp=major1 ...\n> lens >=4.0.1 && <4.1   =>   lens >=4\n>\n> \$> cabal-bounds update --uppercomp=minor ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.0.1 && <4.1.3\n>\n> \$> cabal-bounds update --uppercomp=major2 ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.0.1 && <4.2\n>\n> \$> cabal-bounds update --uppercomp=major1 ...\n> lens >=4.0.1 && <4.1   =>   lens >=4.0.1 && <5\n\n\n\n/Installation/\n\n\nYou have to ensure, that the 'Cabal' library of 'cabal-bounds' matches the one used by the 'cabal' binary:\n\n> \$> cabal --version\n> cabal-install version 1.18.0.2\n> using version 1.18.1 of the Cabal library\n>\n> \$> cabal install --constraint=\"Cabal == 1.18.1\" cabal-bounds\n\nIf you update the 'cabal' binary and the used 'Cabal' library changes, then you have to rebuild 'cabal-bounds'.\n\n\n\n/Options/\n\n\nYou can restrict the modification to certain sections in the cabal file by specifing the type and the name of the section:\n\n* --library\n\n* --executable=name\n\n* --testsuite=name\n\n* --benchmark=name\n\nIf you omit these options, then all sections are considered and modified.\n\n\nYou can also restrict the modification of dependencies by specifing which dependencies should only or shouldn't be modified:\n\n* --only=name\n\n* --ignore=name\n\nIf you omit these options, then all dependencies are considered and modified.\n\n\nAll options taking a name can be specified multiple times:\n\ne.g. '--executable=exe1 --executable=exe2' or '--ignore=base --ignore=whatever'\n\nPlease consult 'cabal-bounds --help' for a complete list of options.\n\n\n\n/Issues/\n\n\nPerhaps the currently most annoying thing is, that you have to live with the reformating of your\n'cabal' file done by the pretty printer of the 'Cabal' library.\n\nTo reformat your 'cabal' file without changing any bounds you can call 'cabal-bounds' with the name of\na section that isn't present in the 'cabal' file:\n\n> \$> cabal-bounds drop --executable=blub myproject.cabal";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          ];
        buildable = true;
        };
      exes = {
        "cabal-bounds" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabal-bounds" or (buildDepError "cabal-bounds"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cabal-bounds-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."cabal-bounds" or (buildDepError "cabal-bounds"))
            ];
          buildable = true;
          };
        };
      };
    }