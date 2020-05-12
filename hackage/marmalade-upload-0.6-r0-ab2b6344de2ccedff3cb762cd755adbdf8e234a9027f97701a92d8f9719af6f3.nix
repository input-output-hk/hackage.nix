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
    flags = { libmagic = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "marmalade-upload"; version = "0.6"; };
      license = "MIT";
      copyright = "(C) 2014 Sebastian Wiesner";
      maintainer = "lunaryorn@gmail.com";
      author = "Sebastian Wiesner";
      homepage = "https://github.com/lunaryorn/marmalade-upload";
      url = "";
      synopsis = "Upload packages to Marmalade";
      description = "Upload Emacs packages to the <http://marmalade-repo.org/ Marmalade> ELPA\narchive.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          ] ++ (if flags.libmagic
          then [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]
          else [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ]);
        libs = (pkgs.lib).optional (flags.libmagic) (pkgs."magic" or (errorHandler.sysDepError "magic"));
        build-tools = (pkgs.lib).optional (flags.libmagic) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")));
        buildable = true;
        };
      exes = {
        "marmalade-upload" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."keyring" or (errorHandler.buildDepError "keyring"))
            (hsPkgs."marmalade-upload" or (errorHandler.buildDepError "marmalade-upload"))
            ];
          buildable = true;
          };
        };
      tests = {
        "magic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."marmalade-upload" or (errorHandler.buildDepError "marmalade-upload"))
            ];
          buildable = true;
          };
        "marmalade" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."marmalade-upload" or (errorHandler.buildDepError "marmalade-upload"))
            ];
          buildable = true;
          };
        };
      };
    }