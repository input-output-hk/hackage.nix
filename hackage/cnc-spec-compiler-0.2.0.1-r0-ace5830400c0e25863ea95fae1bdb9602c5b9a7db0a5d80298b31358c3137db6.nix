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
    flags = { basicbuild = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cnc-spec-compiler"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2010 Intel Corporation";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "http://software.intel.com/en-us/articles/intel-concurrent-collections-for-cc/";
      url = "";
      synopsis = "Compiler/Translator for CnC Specification Files.";
      description = "Intel (Concurrent Collections) CnC is a data-flow like\ndeterministic parallel programming model, similar to\nstream-processing but in which nodes in the computation graph share data in tables.\nIn CnC, the structure of the graph and metadata about data-access\npatterns are stored in a specification, which can be used by this\ntool to generate code which will orchestrate the execution of the graph.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cnc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."prettyclass" or (buildDepError "prettyclass"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."stringtable-atom" or (buildDepError "stringtable-atom"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            ] ++ (pkgs.lib).optionals (!flags.basicbuild) [
            (hsPkgs."hubigraph" or (buildDepError "hubigraph"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."HaXml" or (buildDepError "HaXml"))
            (hsPkgs."haxr" or (buildDepError "haxr"))
            ];
          };
        };
      };
    }