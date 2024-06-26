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
      specVersion = "2.0";
      identifier = { name = "base16-lens"; version = "0.1.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020-2021 Emily Pillmore";
      maintainer = "Emily Pillmore <emilypi@cohomolo.gy>";
      author = "Emily Pillmore";
      homepage = "https://github.com/emilypi/base16-lens";
      url = "";
      synopsis = "Optics for the Base16 library";
      description = "Prisms and pattern synonyms for the Base16 library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
        ];
        buildable = true;
      };
    };
  }