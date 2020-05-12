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
      specVersion = "1.8";
      identifier = { name = "gnuidn"; version = "0.2.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "https://john-millikin.com/software/haskell-gnuidn/";
      url = "";
      synopsis = "Bindings for GNU IDN";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."idn" or (errorHandler.sysDepError "idn")) ];
        pkgconfig = [
          (pkgconfPkgs."libidn" or (errorHandler.pkgConfDepError "libidn"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "gnuidn_tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chell" or (errorHandler.buildDepError "chell"))
            (hsPkgs."chell-quickcheck" or (errorHandler.buildDepError "chell-quickcheck"))
            (hsPkgs."gnuidn" or (errorHandler.buildDepError "gnuidn"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          libs = [ (pkgs."idn" or (errorHandler.sysDepError "idn")) ];
          pkgconfig = [
            (pkgconfPkgs."libidn" or (errorHandler.pkgConfDepError "libidn"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
            ];
          buildable = true;
          };
        };
      };
    }