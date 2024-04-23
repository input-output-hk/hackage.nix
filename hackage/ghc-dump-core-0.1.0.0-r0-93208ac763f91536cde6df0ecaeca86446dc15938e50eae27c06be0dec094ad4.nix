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
      identifier = { name = "ghc-dump-core"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Ben Gamari";
      maintainer = "ben@well-typed.com";
      author = "Ben Gamari";
      homepage = "";
      url = "";
      synopsis = "An AST and compiler plugin for dumping GHC's Core representation.";
      description = "@ghc-dump@ is a library, GHC plugin, and set of tools for recording and\nanalysing GHC's Core representation. The plugin is compatible with GHC 7.10\nthrough 8.3, exporting a consistent (albeit somewhat lossy) representation\nacross these versions. The AST is encoded as CBOR, which is small and easy to\ndeserialise.\n\nThis package provides the AST and compiler plugin. See the @ghc-dump-util@\npackage for a useful command-line tool for working with dumps produced by this\nplugin.\n\n= Usage\n\n\"GhcDump.Plugin\" provides a Core-to-Core plugin which dumps a representation\nof the Core AST to a file after every Core-to-Core pass. To use it, simply\ninstall this package and add @-fplugin GhcDump.Plugin@ to your GHC\ncommand-line. See the [README](https://github.com/bgamari/ghc-dump)\nfor further analysis tips.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }