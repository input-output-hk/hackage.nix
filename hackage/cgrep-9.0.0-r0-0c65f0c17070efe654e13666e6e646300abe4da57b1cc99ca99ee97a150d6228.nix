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
    flags = { enable_pcre = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "cgrep"; version = "9.0.0"; };
      license = "GPL-2.0-or-later";
      copyright = "";
      maintainer = "Nicola Bonelli <nicola@larthia.com>";
      author = "Nicola Bonelli";
      homepage = "http://awgn.github.io/cgrep/";
      url = "";
      synopsis = "Command line tool";
      description = "Cgrep: a context-aware grep for source codes";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cgrep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."concurrency" or (errorHandler.buildDepError "concurrency"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitarray" or (errorHandler.buildDepError "bitarray"))
            (hsPkgs."bitwise" or (errorHandler.buildDepError "bitwise"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-strict-builder" or (errorHandler.buildDepError "bytestring-strict-builder"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unicode-show" or (errorHandler.buildDepError "unicode-show"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ] ++ pkgs.lib.optional (flags.enable_pcre) (hsPkgs."regex-pcre-text" or (errorHandler.buildDepError "regex-pcre-text"));
          buildable = true;
        };
      };
    };
  }