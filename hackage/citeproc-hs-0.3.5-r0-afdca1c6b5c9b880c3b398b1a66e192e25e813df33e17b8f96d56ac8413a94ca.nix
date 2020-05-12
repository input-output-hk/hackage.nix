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
    flags = {
      small_base = true;
      bibutils = true;
      network = true;
      embed_data_files = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "citeproc-hs"; version = "0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unitn.it";
      author = "Andrea Rossato";
      homepage = "http://gorgias.mine.nu/repos/citeproc-hs/";
      url = "";
      synopsis = "A Citation Style Language implementation in Haskell";
      description = "citeproc-hs is a library for rendering\nbibliographic reference citations into a variety\nof styles using a macro language called Citation\nStyle Language (CSL). More details on CSL can be\nfound here:\n<http://citationstyles.org/>.\n\nFor the API documentation please see \"Text.CSL\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          ] ++ (pkgs.lib).optional (flags.bibutils) (hsPkgs."hs-bibutils" or (errorHandler.buildDepError "hs-bibutils"))) ++ (pkgs.lib).optionals (flags.network) [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ]) ++ (pkgs.lib).optionals (flags.embed_data_files) [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ]) ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }