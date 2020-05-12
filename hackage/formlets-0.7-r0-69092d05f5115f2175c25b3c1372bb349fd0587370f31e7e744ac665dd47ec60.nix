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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "formlets"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Doug Beardsley <mightybyte@gmail.com>";
      author = "";
      homepage = "http://github.com/chriseidhof/formlets/tree/master";
      url = "";
      synopsis = "Formlets implemented in Haskell";
      description = "A modular way to build forms based on applicative functors,\nbased on the work described in:\n\n* Ezra Cooper, Samuel Lindley, Philip Wadler and Jeremy Yallop\n\\\"An idiom's guide to formlets\\\"\nTechnical Report, EDI-INF-RR-1263.\n<http://groups.inf.ed.ac.uk/links/formlets/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }