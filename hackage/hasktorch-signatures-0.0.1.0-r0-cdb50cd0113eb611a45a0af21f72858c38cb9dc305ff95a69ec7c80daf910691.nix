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
      specVersion = "2.2";
      identifier = { name = "hasktorch-signatures"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Backpack signatures for Tensor operations";
      description = "Backpack signature files to glue FFI backends to Hasktorch";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
          (hsPkgs."hasktorch-types-thc" or (errorHandler.buildDepError "hasktorch-types-thc"))
          (hsPkgs."hasktorch-signatures-types" or (errorHandler.buildDepError "hasktorch-signatures-types"))
          ];
        buildable = true;
        };
      sublibs = {
        "hasktorch-partial-floating" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or (errorHandler.buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-signatures-support" or (errorHandler.buildDepError "hasktorch-signatures-support"))
            (hsPkgs."hasktorch-signatures" or (errorHandler.buildDepError "hasktorch-signatures"))
            ];
          buildable = true;
          };
        "hasktorch-partial-signed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or (errorHandler.buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-signatures-support" or (errorHandler.buildDepError "hasktorch-signatures-support"))
            (hsPkgs."hasktorch-signatures" or (errorHandler.buildDepError "hasktorch-signatures"))
            ];
          buildable = true;
          };
        "hasktorch-partial-unsigned" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or (errorHandler.buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-signatures-support" or (errorHandler.buildDepError "hasktorch-signatures-support"))
            (hsPkgs."hasktorch-signatures" or (errorHandler.buildDepError "hasktorch-signatures"))
            ];
          buildable = true;
          };
        };
      exes = {
        "isdefinite-unsigned-th" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."hasktorch-signatures".components.sublibs.hasktorch-partial-unsigned or (errorHandler.buildDepError "hasktorch-signatures:hasktorch-partial-unsigned"))
            ];
          buildable = true;
          };
        "isdefinite-unsigned-thc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-ffi-thc" or (errorHandler.buildDepError "hasktorch-ffi-thc"))
            (hsPkgs."hasktorch-types-thc" or (errorHandler.buildDepError "hasktorch-types-thc"))
            (hsPkgs."hasktorch-signatures".components.sublibs.hasktorch-partial-unsigned or (errorHandler.buildDepError "hasktorch-signatures:hasktorch-partial-unsigned"))
            ];
          buildable = true;
          };
        "isdefinite-signed-th" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."hasktorch-signatures".components.sublibs.hasktorch-partial-signed or (errorHandler.buildDepError "hasktorch-signatures:hasktorch-partial-signed"))
            ];
          buildable = true;
          };
        "isdefinite-signed-thc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-ffi-thc" or (errorHandler.buildDepError "hasktorch-ffi-thc"))
            (hsPkgs."hasktorch-types-thc" or (errorHandler.buildDepError "hasktorch-types-thc"))
            (hsPkgs."hasktorch-signatures".components.sublibs.hasktorch-partial-signed or (errorHandler.buildDepError "hasktorch-signatures:hasktorch-partial-signed"))
            ];
          buildable = true;
          };
        "isdefinite-floating-th" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."hasktorch-signatures".components.sublibs.hasktorch-partial-floating or (errorHandler.buildDepError "hasktorch-signatures:hasktorch-partial-floating"))
            ];
          buildable = true;
          };
        "isdefinite-floating-thc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-ffi-thc" or (errorHandler.buildDepError "hasktorch-ffi-thc"))
            (hsPkgs."hasktorch-types-thc" or (errorHandler.buildDepError "hasktorch-types-thc"))
            (hsPkgs."hasktorch-signatures".components.sublibs.hasktorch-partial-floating or (errorHandler.buildDepError "hasktorch-signatures:hasktorch-partial-floating"))
            ];
          buildable = true;
          };
        };
      };
    }