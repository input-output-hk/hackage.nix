{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "free-operational"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Luis Casillas";
      maintainer = "luis@casillas.org";
      author = "Luis Casillas";
      homepage = "";
      url = "";
      synopsis = "Operational Applicative, Alternative, Monad and MonadPlus, built with free types.";
      description = "A reimplementation of the @operational@ package\n(<http://hackage.haskell.org/package/operational>) using free monads\n(from <http://hackage.haskell.org/package/free>).  This implements\nideas discussed here:\n\n* <http://stackoverflow.com/questions/14263363/is-operational-really-isomorphic-to-a-free-monad>\n\n* <http://www.reddit.com/r/haskell/comments/17a33g/free_functors_the_reason_free_and_operational_are/>\n\nTo understand the basic concepts you can do no better than read\nHeinrich Apfelmus' @operational@ tutorial:\n\n* <http://apfelmus.nfshost.com/articles/operational-monad.html>\n\nIn addition to that, this package supplies @operational@-style\nmodules for 'Applicative', 'Alternative' and 'MonadPlus'.\n'Applicative' and 'Alternative' programs easily admit of static\nanalysis.  See these references for discussion and examples:\n\n* <http://gergo.erdi.hu/blog/2012-12-01-static_analysis_with_applicatives/> (discussion: <http://www.reddit.com/r/haskell/comments/143wpd/static_analysis_with_applicatives/>)\n\n* <http://paolocapriotti.com/blog/2013/04/03/free-applicative-functors/> (discussion: <http://www.reddit.com/r/haskell/comments/1bnql3/free_applicative_functors_icfp_submission/>)\n\nSee \"Control.Applicative.Operational\" for the bulk of the documentation.\n\"Control.Alternative.Operational\" also has some significant examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
          (hsPkgs."kan-extensions" or ((hsPkgs.pkgs-errors).buildDepError "kan-extensions"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."free-operational" or ((hsPkgs.pkgs-errors).buildDepError "free-operational"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."checkers" or ((hsPkgs.pkgs-errors).buildDepError "checkers"))
            ];
          buildable = true;
          };
        };
      };
    }