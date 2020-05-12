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
      identifier = { name = "trivial-constraint"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sagemuej@smail.uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/trivial-constraint";
      url = "";
      synopsis = "Constraints that any type, resp. no type fulfills";
      description = "Since GHC 7.4, constraints are first-class: we have the constraint kind, and thus type-classes have a kind such as @* -> Constraint@.\n\nThese can be used as parameters to data types. They also can be combined quite nicely,\n\n@\ntype NewConstraint a = (Constraint1 a, Constraint2 a)\n@\n\nhowever you always need to start with a plain old type class when building constraints.\n\nThis library provides a type class that is not really a constraint at all, so you can \"start from zero\" with building up a custom constraint.\nAlso its opposite (a constraint that no type can ever fulfill).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }