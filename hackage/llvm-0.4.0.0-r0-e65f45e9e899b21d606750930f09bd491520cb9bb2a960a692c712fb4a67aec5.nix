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
    flags = { bytestring-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "llvm"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson <lennart@augustsson.net>";
      author = "Lennart Augustsson";
      homepage = "http://www.serpentine.com/blog/software/llvm/";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit";
      description = "Bindings to the LLVM compiler toolkit";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = if flags.bytestring-in-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
        buildable = true;
        };
      };
    }