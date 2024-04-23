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
      specVersion = "1.2";
      identifier = { name = "agum"; version = "2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ramsdell@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Unification and Matching in an Abelian Group";
      description = "The unification problem is given the problem\nstatement t =? t\\', find a most general\nsubstitution s such that s(t) = s(t\\') modulo\nthe axioms of an Abelian group.  The matching\nproblem is to find a most general substitution\ns such that s(t) = t\\' modulo the axioms.\nSubstitition s is more general than s\\' if\nthere is a substitition s\\\" such that s\\' =\ns\\\" o s.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "agum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }