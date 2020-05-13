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
    flags = { use_mtl = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "fix-parser-simple"; version = "15320.3"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "Matthew Farkas-Dyck";
      homepage = "https://github.com/strake/fix-parser-simple.hs";
      url = "";
      synopsis = "Simple fix-expression parser";
      description = "Simple fix-expression parser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (if flags.use_mtl
          then [ (hsPkgs."mtl" or (errorHandler.buildDepError "mtl")) ]
          else [ (hsPkgs."mmtl" or (errorHandler.buildDepError "mmtl")) ]);
        buildable = true;
        };
      };
    }