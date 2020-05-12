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
      identifier = { name = "hF2"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marcel Fourné, 2011-2013";
      maintainer = "Marcel Fourné (mail@marcelfourne.de)";
      author = "Marcel Fourné";
      homepage = "";
      url = "";
      synopsis = "F(2^e) math for cryptography";
      description = "This library implements polynomials on Binary Fields F(2^e), a subform of Finite Fields F(p^n) also known as Galois Fields GF(p^n).\nIt is intended as a backend for cryptographic use and the code should be timing attack resistant.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      };
    }