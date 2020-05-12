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
      specVersion = "1.6";
      identifier = { name = "imagepaste"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baltazar.bz@gmail.com";
      author = "Yuri Bochkarev";
      homepage = "https://bitbucket.org/balta2ar/imagepaste";
      url = "";
      synopsis = "Command-line image paste utility";
      description = "Command-line utility to paste images to image hosting sites.\nImage hosting sites are internally called engines. Some engines\nsupport pasting not just image files but any files so with\nsome engines the program can be used as a file sharing client.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "imagepaste" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."vcs-revision" or (errorHandler.buildDepError "vcs-revision"))
            ];
          buildable = true;
          };
        };
      };
    }