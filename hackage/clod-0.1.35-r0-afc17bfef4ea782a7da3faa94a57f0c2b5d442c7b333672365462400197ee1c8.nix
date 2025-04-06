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
      specVersion = "2.4";
      identifier = { name = "clod"; version = "0.1.35"; };
      license = "MIT";
      copyright = "";
      maintainer = "ink@fuzz.ink";
      author = "Fuzz Leonard";
      homepage = "https://github.com/fuzz/clod";
      url = "";
      synopsis = "Project file manager for Claude AI integrations";
      description = "Clod (Claude Loader) is a utility for preparing and uploading files to Claude AI's\nProject Knowledge feature. It tracks file changes, respects .gitignore and .clodignore\npatterns, and optimizes filenames for Claude's UI.\n\nKey features:\n\n* Process all files on first run, only modified files on subsequent runs\n* Respect .gitignore and .clodignore patterns\n* Handle binary vs. text files automatically\n* Use system temporary directories for staging files\n* Create optimized filenames for Claude's UI\n* Generate a path manifest for mapping optimized names back to original paths\n* Color-coded, user-friendly terminal interface\n* Capability-based security model\n* Path-restricted file access to prevent unauthorized operations\n\nClod is particularly useful for reducing AI development costs while working with\nClaude. By handling file selection, staging, and tracking efficiently, it can cut\nAPI costs by 50% or more. This makes powerful AI tools accessible to students,\nbootstrappers, and developers on tight budgets, leveling the playing field between\nthe wealthiest and the scrappiest.\n\nClod implements a capability-based security model to ensure safe AI interactions\nwith the file system, and uses checksum-based file tracking with XXH3 hashes\nfor detecting modified or renamed files. It uses libmagic for robust, content-based\nfile type detection.\n\nMETA NOTE: This project represents a milestone in human-AI collaboration, with Claude\n(the AI assistant from Anthropic) writing 99.9% of the code based on guidance from Fuzz\nLeonard. The result demonstrates how powerful AI tools are best created through\ncollaborative approaches where humans and AI systems leverage their respective strengths.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."xxhash-ffi" or (errorHandler.buildDepError "xxhash-ffi"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."magic" or (errorHandler.buildDepError "magic"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
        ];
        buildable = true;
      };
      exes = {
        "clod" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."clod" or (errorHandler.buildDepError "clod"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
        "magictest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."magic" or (errorHandler.buildDepError "magic"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
      tests = {
        "clod-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."clod" or (errorHandler.buildDepError "clod"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }