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
      identifier = { name = "proto-lens-setup"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Cabal support for codegen with proto-lens.";
      description = "This package provides Cabal support for the @proto-lens@ package.\nIt automatically generates Haskell source files from protocol buffer\nfiles (@.proto@).\n\nTo generate Haskell modules for a Cabal package, import\n\"Data.ProtoLens.Setup\" from the @Setup.hs@ file.  For example:\n\n> import Data.ProtoLens.Setup\n> -- Here, \"src\" is the directory where .proto source files may be found\n> main = defaultMainGeneratingProtos \"src\"\n\nThen, edit the @.cabal@ file of your project to:\n\n* Specify @build-type: Custom@, and add a @custom-setup@ clause that\ndepends on @proto-lens-setup@.\n\n* List the .proto files in @extra-source-files@.  Note that the field belongs\nat the top level of the @.cabal@ file, rather than once per\nlibrary\\/executable\\/etc.\n\n* List the generated modules (e.g. @Proto.Foo.Bar@) in @exposed-modules@\nor @other-modules@ of the rule(s) that use them (e.g. the library or\nexecutables).  Additionally, add @proto-lens-runtime@ to the @build-depends@\nof those rules.\n\nFor example, in @foo-bar-proto.cabal@:\n\n> build-type: Custom\n> extra-source-files: src/foo/bar.proto\n> ...\n> custom-setup\n>   setup-depends: base, Cabal, proto-lens-setup\n\n> library\n>     exposed-modules: Proto.Foo.Bar, Proto.Foo.Bar_Fields\n>     autogen-modules: Proto.Foo.Bar, Proto.Foo.Bar_Fields\n>     build-depends: proto-lens-runtime, ...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }