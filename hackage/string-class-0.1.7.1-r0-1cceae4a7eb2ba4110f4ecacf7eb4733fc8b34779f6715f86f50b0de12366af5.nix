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
      specVersion = "1.18";
      identifier = { name = "string-class"; version = "0.1.7.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson, 2021 Kostiantyn Rybnikov, 2023 Sergey Alirzaev";
      maintainer = "Sergey Alirzaev <zl29ah@gmail.com>, ByronJohnsonFP@gmail.com, Kostiantyn Rybnikov <k-bx@k-bx.com>";
      author = "Byron James Johnson";
      homepage = "https://github.com/string-class/string-class";
      url = "";
      synopsis = "String class library";
      description = "String class library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
    };
  }