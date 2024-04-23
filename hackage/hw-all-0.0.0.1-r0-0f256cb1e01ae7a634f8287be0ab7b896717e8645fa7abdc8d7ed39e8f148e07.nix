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
      specVersion = "2.4";
      identifier = { name = "hw-all"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-all#readme";
      url = "";
      synopsis = "Demo library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
          (hsPkgs."hw-aeson" or (errorHandler.buildDepError "hw-aeson"))
          (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."hw-conduit" or (errorHandler.buildDepError "hw-conduit"))
          (hsPkgs."hw-diagnostics" or (errorHandler.buildDepError "hw-diagnostics"))
          (hsPkgs."hw-dsv" or (errorHandler.buildDepError "hw-dsv"))
          (hsPkgs."hw-dump" or (errorHandler.buildDepError "hw-dump"))
          (hsPkgs."hw-eliasfano" or (errorHandler.buildDepError "hw-eliasfano"))
          (hsPkgs."hw-excess" or (errorHandler.buildDepError "hw-excess"))
          (hsPkgs."hw-fingertree" or (errorHandler.buildDepError "hw-fingertree"))
          (hsPkgs."hw-fingertree-strict" or (errorHandler.buildDepError "hw-fingertree-strict"))
          (hsPkgs."hw-hedgehog" or (errorHandler.buildDepError "hw-hedgehog"))
          (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
          (hsPkgs."hw-int" or (errorHandler.buildDepError "hw-int"))
          (hsPkgs."hw-ip" or (errorHandler.buildDepError "hw-ip"))
          (hsPkgs."hw-json" or (errorHandler.buildDepError "hw-json"))
          (hsPkgs."hw-json-lens" or (errorHandler.buildDepError "hw-json-lens"))
          (hsPkgs."hw-json-simd" or (errorHandler.buildDepError "hw-json-simd"))
          (hsPkgs."hw-json-simple-cursor" or (errorHandler.buildDepError "hw-json-simple-cursor"))
          (hsPkgs."hw-json-standard-cursor" or (errorHandler.buildDepError "hw-json-standard-cursor"))
          (hsPkgs."hw-mquery" or (errorHandler.buildDepError "hw-mquery"))
          (hsPkgs."hw-packed-vector" or (errorHandler.buildDepError "hw-packed-vector"))
          (hsPkgs."hw-parser" or (errorHandler.buildDepError "hw-parser"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
          (hsPkgs."hw-simd" or (errorHandler.buildDepError "hw-simd"))
          (hsPkgs."hw-streams" or (errorHandler.buildDepError "hw-streams"))
          (hsPkgs."hw-string-parse" or (errorHandler.buildDepError "hw-string-parse"))
          (hsPkgs."hw-succinct" or (errorHandler.buildDepError "hw-succinct"))
          (hsPkgs."hw-uri" or (errorHandler.buildDepError "hw-uri"))
          (hsPkgs."hw-xml" or (errorHandler.buildDepError "hw-xml"))
        ];
        buildable = true;
      };
    };
  }