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
      specVersion = "1.10";
      identifier = { name = "ghc-dump-util"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Ben Gamari";
      maintainer = "ben@well-typed.com";
      author = "Ben Gamari";
      homepage = "";
      url = "";
      synopsis = "Handy tools for working with @ghc-dump@ dumps.";
      description = "@ghc-dump@ is a library, GHC plugin, and set of tools for recording and\nanalysing GHC's Core representation. The plugin is compatible with GHC 7.10\nthrough 8.3, exporting a consistent (albeit somewhat lossy) representation\nacross these versions. The AST is encoded as CBOR, which is small and easy to\ndeserialise.\n\nThis package provides the AST and compiler plugin. See the @ghc-dump-util@\npackage for a useful command-line tool for working with dumps produced by this\nplugin.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-dump-core" or (errorHandler.buildDepError "ghc-dump-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          ];
        buildable = true;
        };
      exes = {
        "ghc-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-dump-core" or (errorHandler.buildDepError "ghc-dump-core"))
            (hsPkgs."ghc-dump-util" or (errorHandler.buildDepError "ghc-dump-util"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or (errorHandler.buildDepError "regex-tdfa-text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }