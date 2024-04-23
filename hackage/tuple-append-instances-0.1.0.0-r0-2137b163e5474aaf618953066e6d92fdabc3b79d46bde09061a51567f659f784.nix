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
      identifier = { name = "tuple-append-instances"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Willem Van Onsem";
      maintainer = "hapytexteu+gh@gmail.com";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/tuple-append-instances#readme";
      url = "";
      synopsis = "Extra instances for the typeclasses in the tuple-append package";
      description = "A package that defines typeclass instances for the typeclasses defined in the tuple-append package. It defines instances for data types defined in the bytestring, dlist, text and vector package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tuple-append" or (errorHandler.buildDepError "tuple-append"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }