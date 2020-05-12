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
      specVersion = "0";
      identifier = { name = "formlets"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Jeremy Yallop / Tupil";
      maintainer = "Chris Eidhof <ce+hackage@tupil.com>";
      author = "Jeremy Yallop / Chris Eidhof";
      homepage = "";
      url = "";
      synopsis = "Formlets implemented in Haskell";
      description = "A modular way to build forms based on applicative functors, as\ndescribed in:\n\n* Ezra Cooper, Samuel Lindley, Philip Wadler and Jeremy Yallop\n\\\"An idiom's guide to formlets\\\"\nTechnical Report, EDI-INF-RR-1263.\n<http://groups.inf.ed.ac.uk/links/formlets/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }