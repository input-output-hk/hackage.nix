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
      identifier = { name = "SCRIPTWriter"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Rick Klomp";
      maintainer = "r.klomp@cs.stir.ac.uk";
      author = "Rick Klomp";
      homepage = "https://github.com/RKlompUU/SCRIPTWriter";
      url = "";
      synopsis = "ESCRIPT: a human friendly language for programming Bitcoin scripts";
      description = "Please see the README on Github at https://github.com/RKlompUU/SCRIPTWriter";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."uu-tc" or (errorHandler.buildDepError "uu-tc"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bitcoin-script" or (errorHandler.buildDepError "bitcoin-script"))
          (hsPkgs."bitcoin-hs" or (errorHandler.buildDepError "bitcoin-hs"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "SCRIPTWriter-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SCRIPTWriter" or (errorHandler.buildDepError "SCRIPTWriter"))
            ];
          buildable = true;
          };
        };
      };
    }