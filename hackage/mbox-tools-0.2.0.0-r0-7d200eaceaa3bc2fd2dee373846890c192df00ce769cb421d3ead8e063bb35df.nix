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
    flags = { use_hutt = false; useless = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mbox-tools"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "https://github.com/np/mbox-tools";
      url = "";
      synopsis = "A collection of tools to process mbox files";
      description = "A collection of tools to process mbox files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
          (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
          ];
        buildable = true;
        };
      exes = {
        "mbox-counting" = { buildable = true; };
        "mbox-average-size" = {
          buildable = if !flags.useless then false else true;
          };
        "mbox-quoting" = {
          buildable = if !flags.useless then false else true;
          };
        "redact-mbox" = {
          depends = [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "mbox-list" = { buildable = true; };
        "mbox-pick" = { buildable = true; };
        "mbox-partition" = { buildable = true; };
        "mbox-grep" = {
          depends = (pkgs.lib).optional (flags.use_hutt) (hsPkgs."hutt" or (errorHandler.buildDepError "hutt"));
          buildable = if flags.use_hutt then true else false;
          };
        "split-mbox" = { buildable = true; };
        "mbox-iter" = {
          depends = [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "mbox-from-files" = { buildable = true; };
        };
      };
    }