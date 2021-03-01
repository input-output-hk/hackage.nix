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
      specVersion = "2.0";
      identifier = { name = "group-theory"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020-2021 Emily Pillmore <emilypi@cohomolo.gy>";
      maintainer = "Emily Pillmore <emilypi@cohomolo.gy>, Reed Mullanix <reedmullanix@gmail.com>";
      author = "Emily Pillmore";
      homepage = "https://github.com/emilypi/group-theory";
      url = "";
      synopsis = "The theory of groups";
      description = "This package includes definitions for Groups (Monoids with invertibility), including order calculations\nas well as finite, free, cyclic, and permutation groups. Additionally, we add the concept\nof 'Cancellative' functors, building upon 'Alternative' applicative functors.\n\nThere are other group theory related packages on Hackage:\n\n* [groups](https://hackage.haskell.org/package/groups): A minimal, low-footprint definition\n\n* [magmas](https://hackage.haskell.org/package/magmas): A pedagogical hierarchy of algebras, starting from Magmas, including Loops, and Inverse Semigroups.\n\n* [arithmoi](https://hackage.haskell.org/package/arithmoi): Number theory, typelevel modular arithmetic, and cyclic groups.\n\nThis package, @group-theory@, tries to combine the best parts, while focusing on usability and intuitiveness.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          ];
        buildable = true;
        };
      };
    }