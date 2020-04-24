{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "muesli"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Călin Ardelean";
      maintainer = "Călin Ardelean <calinucs@gmail.com>";
      author = "Călin Ardelean";
      homepage = "https://github.com/clnx/muesli";
      url = "";
      synopsis = "A simple document-oriented database";
      description = "@muesli@ is an easy to use\n<https://en.wikipedia.org/wiki/Multiversion_concurrency_control MVCC>\n<https://en.wikipedia.org/wiki/Document-oriented_database document-oriented database>\nfeaturing ACID transactions, automatic index management and minimal boilerplate.\n\nImport the \"Database.Muesli.Types\" module to mark up your types for indexing,\n\"Database.Muesli.Query\" for writing and running queries,\nand \"Database.Muesli.Handle\" for database management.\nThe rest of the modules are internal, but exposed just in case.\n\nSee the README.md file for an usage example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."psqueues" or ((hsPkgs.pkgs-errors).buildDepError "psqueues"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }