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
      identifier = { name = "generics-mrsop-gdiff"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "arian.vanputten@gmail.com v.cacciarimiraldo@gmail.com";
      author = "Arian van Putten and Victor Miraldo";
      homepage = "";
      url = "";
      synopsis = "Reimplementation of the `gdiff` algorithm for `generics-mrsop`";
      description = "Here we port the gdiff algorithm and library to work over the generics-mrsop, enabling code that relies on the later library to access the gdiff algorithm. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generics-mrsop" or (errorHandler.buildDepError "generics-mrsop"))
          ];
        buildable = true;
        };
      };
    }