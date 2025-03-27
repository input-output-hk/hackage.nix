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
      specVersion = "3.4";
      identifier = { name = "vext"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Array library monomorphized with backpack";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vext".components.sublibs.inst or (errorHandler.buildDepError "vext:inst"))
          (hsPkgs."vext".components.sublibs.pair-inst or (errorHandler.buildDepError "vext:pair-inst"))
          (hsPkgs."vext".components.sublibs.inst-bit or (errorHandler.buildDepError "vext:inst-bit"))
          (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."run-st" or (errorHandler.buildDepError "run-st"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
        ];
        buildable = true;
      };
      sublibs = {
        "indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
          ];
          buildable = true;
        };
        "prim-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
          ];
          buildable = true;
        };
        "map-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
          ];
          buildable = true;
        };
        "zip-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
          ];
          buildable = true;
        };
        "type-eq-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
          ];
          buildable = true;
        };
        "rep-eq-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
          ];
          buildable = true;
        };
        "ord-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
            (hsPkgs."vext".components.sublibs.inst-bit or (errorHandler.buildDepError "vext:inst-bit"))
            (hsPkgs."vext".components.sublibs.rep-eq-indef or (errorHandler.buildDepError "vext:rep-eq-indef"))
          ];
          buildable = true;
        };
        "mask-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
            (hsPkgs."vext".components.sublibs.inst-bit or (errorHandler.buildDepError "vext:inst-bit"))
          ];
          buildable = true;
        };
        "permute-indef" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
            (hsPkgs."vext".components.sublibs.inst or (errorHandler.buildDepError "vext:inst"))
          ];
          buildable = true;
        };
        "imp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
          ];
          buildable = true;
        };
        "inst-bit" = {
          depends = [
            (hsPkgs."vext".components.sublibs.imp or (errorHandler.buildDepError "vext:imp"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
            (hsPkgs."vext".components.sublibs.rep-eq-indef or (errorHandler.buildDepError "vext:rep-eq-indef"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
        "inst" = {
          depends = [
            (hsPkgs."vext".components.sublibs.imp or (errorHandler.buildDepError "vext:imp"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
            (hsPkgs."vext".components.sublibs.map-indef or (errorHandler.buildDepError "vext:map-indef"))
            (hsPkgs."vext".components.sublibs.zip-indef or (errorHandler.buildDepError "vext:zip-indef"))
            (hsPkgs."vext".components.sublibs.ord-indef or (errorHandler.buildDepError "vext:ord-indef"))
            (hsPkgs."vext".components.sublibs.rep-eq-indef or (errorHandler.buildDepError "vext:rep-eq-indef"))
            (hsPkgs."vext".components.sublibs.type-eq-indef or (errorHandler.buildDepError "vext:type-eq-indef"))
            (hsPkgs."vext".components.sublibs.mask-indef or (errorHandler.buildDepError "vext:mask-indef"))
            (hsPkgs."vext".components.sublibs.prim-indef or (errorHandler.buildDepError "vext:prim-indef"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
        "pair-indef" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
        "pair-array-inst" = {
          depends = [
            (hsPkgs."vext".components.sublibs.inst or (errorHandler.buildDepError "vext:inst"))
            (hsPkgs."vext".components.sublibs.imp or (errorHandler.buildDepError "vext:imp"))
            (hsPkgs."vext".components.sublibs.pair-indef or (errorHandler.buildDepError "vext:pair-indef"))
          ];
          buildable = true;
        };
        "pair-inst" = {
          depends = [
            (hsPkgs."vext".components.sublibs.pair-array-inst or (errorHandler.buildDepError "vext:pair-array-inst"))
            (hsPkgs."vext".components.sublibs.indef or (errorHandler.buildDepError "vext:indef"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."byteslice" or (errorHandler.buildDepError "byteslice"))
            (hsPkgs."vext" or (errorHandler.buildDepError "vext"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."natural-arithmetic" or (errorHandler.buildDepError "natural-arithmetic"))
            (hsPkgs."unlifted" or (errorHandler.buildDepError "unlifted"))
          ];
          buildable = true;
        };
      };
    };
  }