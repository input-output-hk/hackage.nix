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
    flags = { tests = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "samtools"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nicholas Ingolia";
      homepage = "http://www.ingolia-lab.org/software/samtools/";
      url = "";
      synopsis = "Binding to the C samtools library";
      description = "Binding to the C samtools library, which reads and\nwrites SAM format alignments, both binary and tab-\ndelimited text formats. It also supports rapid access\nto specific alignments in a sorted BAM file and access\nto sequences from indexed Fasta files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
          ];
        libs = [ (pkgs."z" or (errorHandler.sysDepError "z")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "samtest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."seqloc" or (errorHandler.buildDepError "seqloc"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          libs = [ (pkgs."z" or (errorHandler.sysDepError "z")) ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
            ];
          buildable = if !flags.tests then false else true;
          };
        };
      };
    }