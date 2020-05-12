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
      identifier = { name = "mbox-tools"; version = "0.2.0.2"; };
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
      exes = {
        "mbox-counting" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            ];
          buildable = true;
          };
        "mbox-average-size" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "mbox-quoting" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "redact-mbox" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "mbox-list" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-pick" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-partition" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "mbox-grep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (flags.use_hutt) (hsPkgs."hutt" or (errorHandler.buildDepError "hutt"));
          buildable = if flags.use_hutt then true else false;
          };
        "split-mbox" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-iter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "mbox-from-files" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (errorHandler.buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."hsemail" or (errorHandler.buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }