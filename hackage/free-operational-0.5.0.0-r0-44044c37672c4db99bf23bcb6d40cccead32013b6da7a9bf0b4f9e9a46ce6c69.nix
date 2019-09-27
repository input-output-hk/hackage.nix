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
    flags = { test-properties = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "free-operational"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Luis Casillas";
      maintainer = "luis@casillas.org";
      author = "Luis Casillas";
      homepage = "";
      url = "";
      synopsis = "Operational Applicative, Alternative, Monad and MonadPlus from free types.";
      description = "A reimplementation of the @operational@ package\n(<http://hackage.haskell.org/package/operational>) using free monads\n(from <http://hackage.haskell.org/package/free>).  This implements\nideas discussed here:\n\n* <http://stackoverflow.com/questions/14263363/is-operational-really-isomorphic-to-a-free-monad>\n\n* <http://www.reddit.com/r/haskell/comments/17a33g/free_functors_the_reason_free_and_operational_are/>\n\nTo understand the basic concepts you can do no better than read\nHeinrich Apfelmus' @operational@ tutorial:\n\n* <http://apfelmus.nfshost.com/articles/operational-monad.html>\n\nIn addition to that, this package supplies @operational@-style\nmodules for 'Applicative', 'Alternative' and 'MonadPlus'.\n'Applicative' and 'Alternative' programs easily admit of static\nanalysis.  See these references for discussion and examples:\n\n* <http://gergo.erdi.hu/blog/2012-12-01-static_analysis_with_applicatives/> (discussion: <http://www.reddit.com/r/haskell/comments/143wpd/static_analysis_with_applicatives/>)\n\n* <http://paolocapriotti.com/blog/2013/04/03/free-applicative-functors/> (discussion: <http://www.reddit.com/r/haskell/comments/1bnql3/free_applicative_functors_icfp_submission/>)\n\nSee \"Control.Applicative.Operational\" for the bulk of the documentation.\n\"Control.Alternative.Operational\" also has some significant examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."comonad-transformers" or (buildDepError "comonad-transformers"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-properties)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."free-operational" or (buildDepError "free-operational"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."checkers" or (buildDepError "checkers"))
            ];
          buildable = if !flags.test-properties then false else true;
          };
        };
      };
    }