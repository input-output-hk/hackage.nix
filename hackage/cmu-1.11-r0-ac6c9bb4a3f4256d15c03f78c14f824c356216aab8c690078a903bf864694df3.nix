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
      specVersion = "1.6";
      identifier = { name = "cmu"; version = "1.11"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ramsdell@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Unification in a Commutative Monoid";
      description = "The unification problem is given the problem\nstatement t =? t\\', find a most general\nsubstitution s such that s(t) = s(t\\') modulo\nthe axioms of a commutative monoid.\nSubstitition s is more general than s\\' if\nthere is a substitition s\\\" such that s\\' =\ns\\\" o s.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      exes = {
        "cmu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
      };
    };
  }