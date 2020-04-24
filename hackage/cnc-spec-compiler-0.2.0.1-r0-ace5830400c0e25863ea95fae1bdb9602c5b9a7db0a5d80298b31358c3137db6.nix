{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."stringtable-atom" or ((hsPkgs.pkgs-errors).buildDepError "stringtable-atom"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            ] ++ (pkgs.lib).optionals (!flags.basicbuild) [
            (hsPkgs."hubigraph" or ((hsPkgs.pkgs-errors).buildDepError "hubigraph"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."haxr" or ((hsPkgs.pkgs-errors).buildDepError "haxr"))
            ];
          buildable = true;
          };
        };
      };
    }