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
      identifier = { name = "tableaux"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
      author = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
      homepage = "";
      url = "";
      synopsis = "An interactive theorem prover based on semantic tableaux";
      description = "This is a simple web-based interactive theorem prover\nusing semantic tableaux for propositional and first-order logic\n(cf. First-Order Logic, Raymond Smullyan, Dover).\nIt allows step-by-step construction of proofs and runs on any\nweb server supporting the CGI interface.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tableaux.cgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
          ];
          buildable = true;
        };
      };
    };
  }