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
      identifier = { name = "dynamic-linker-template"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hsyl20@gmail.com";
      author = "Sylvain HENRY";
      homepage = "http://github.com/hsyl20/dynamic-linker-template";
      url = "";
      synopsis = "Automatically derive dynamic linking methods from a data type. ";
      description = "This package uses Template Haskell to generate dynamic linking FFI methods from a\nrecord by using its field names. A load function is generated to create an instance\nof the data from a library path.\n\nOptional symbols are supported (use Maybe types in the data structure).\n\nA String->String method can be provided to deal with symbols whose names are not\nexactly the same as field names.\n\nSee <https://github.com/hsyl20/dynamic-linker-template/blob/master/Tests/Test.hs> for an example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }