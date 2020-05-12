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
      identifier = { name = "hw-ip"; version = "2.4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2020 John Ky\n2019-2020 David Turnbull\n2019-2020 Jian Wan";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky, David Turnbull, Jian Wan";
      homepage = "https://github.com/haskell-works/hw-ip#readme";
      url = "";
      synopsis = "Library for manipulating IP addresses and CIDR blocks";
      description = "Library for manipulating IP addresses and CIDR blocks. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."appar" or (errorHandler.buildDepError "appar"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      sublibs = {
        "hw-ip-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-ip" or (errorHandler.buildDepError "hw-ip"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      exes = {
        "hw-ip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."appar" or (errorHandler.buildDepError "appar"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hw-ip" or (errorHandler.buildDepError "hw-ip"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hw-ip-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."appar" or (errorHandler.buildDepError "appar"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-ip" or (errorHandler.buildDepError "hw-ip"))
            (hsPkgs."hw-ip-gen" or (errorHandler.buildDepError "hw-ip-gen"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            (hsPkgs."hw-ip" or (errorHandler.buildDepError "hw-ip"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover or (pkgs.buildPackages.doctest-discover or (errorHandler.buildToolDepError "doctest-discover")))
            ];
          buildable = true;
          };
        };
      };
    }