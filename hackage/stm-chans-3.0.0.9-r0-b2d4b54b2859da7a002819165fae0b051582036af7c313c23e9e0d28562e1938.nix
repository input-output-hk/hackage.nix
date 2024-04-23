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
      identifier = { name = "stm-chans"; version = "3.0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "2011–2023 wren romano";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano, Thomas DuBuisson";
      homepage = "https://wrengr.org/software/hackage.html";
      url = "";
      synopsis = "Additional types of channels for STM.";
      description = "Additional types of channels for STM.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }