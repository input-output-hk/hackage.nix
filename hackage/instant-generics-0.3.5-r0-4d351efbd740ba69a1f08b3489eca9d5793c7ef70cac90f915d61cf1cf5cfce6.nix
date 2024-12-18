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
      identifier = { name = "instant-generics"; version = "0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Universiteit Utrecht, 2012 University of Oxford";
      maintainer = "generics@haskell.org";
      author = "José Pedro Magalhães";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/InstantGenerics";
      url = "";
      synopsis = "Generic programming library with a sum of products view";
      description = "This is a generic programming library based on type classes and type families\nfirst described by Chakravarty et al. (see\n<http://www.cse.unsw.edu.au/~chak/project/generics/>). The current release\nimplements the extensions to support indexed datatypes described in:\n\n*  José Pedro Magalhães and Johan Jeuring.\n/Generic Programming for Indexed Datatypes./\nDraft version, 2011.\n<http://dreixel.net/research/pdf/gpid_draft.pdf>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        buildable = true;
      };
    };
  }