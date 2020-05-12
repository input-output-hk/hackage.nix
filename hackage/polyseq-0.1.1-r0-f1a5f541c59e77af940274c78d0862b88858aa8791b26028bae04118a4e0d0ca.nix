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
      specVersion = "1.2.3";
      identifier = { name = "polyseq"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Counter examples to Free Theorems";
      description = "Given a term, this program calculates a set of optimal Free Theorems\nthat hold in a lambda calculus with Seq. It drops bottom-reflectingness\n(or totality) restrictions when possible.\nThe theory behind the algorithm is described in the paper\n\\\"Taming Selective Strictness\\\" (ATPS'09) by Daniel Seidel and Janis\nVoigtländer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free-theorems" or (errorHandler.buildDepError "free-theorems"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "polyseq.cgi" = {
          depends = [
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."free-theorems" or (errorHandler.buildDepError "free-theorems"))
            ];
          buildable = true;
          };
        };
      };
    }