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
      identifier = { name = "multirec-alt-deriver"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniels@community.haskell.org";
      author = "Daniel Schüssler";
      homepage = "";
      url = "";
      synopsis = "Alternative multirec instances deriver";
      description = "New features/changes:\n\n- Works with arbitrary monomorphic types, e.g. @([Int],String)@, not just names that refer to monomorphic types.\n\n- The names of the \\\"proof\\\" constructors (= constructors of the family GADT) are now specified by the user. This is useful if you're working with existing code where some type's name is already taken on the value level, so you can't have a proof of that name.\n\n- The names of the constructor-representing empty types are also customizable now.\n\n- Optionally, the type sums in the pattern functor are /balanced/ trees of @(:+:)@ rather than right-nested ones. This cuts down the size of the value-level code (and hopefully helps with compilation time).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."multirec" or (errorHandler.buildDepError "multirec"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }