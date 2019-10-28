let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "proto-lens-setup"; version = "0.4.0.3"; };
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
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."proto-lens-protoc" or (buildDepError "proto-lens-protoc"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }