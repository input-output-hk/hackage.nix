{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Holumbus-Searchengine"; version = "1.2.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2007 - 2012 Uwe Schmidt, Sebastian M. Gauck and Timo B. Kranz";
      maintainer = "Timo B. Huebel <tbh@holumbus.org>, Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Sebastian M. Gauck, Timo B. Huebel, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "A search and indexing engine.";
      description = "The Holumbus-Searchengine library provides a document indexer\nand crawler to build indexes over document collections\nas well as a sophisticated query interface for these indexes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bzlib" or ((hsPkgs.pkgs-errors).buildDepError "bzlib"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."hxt-cache" or ((hsPkgs.pkgs-errors).buildDepError "hxt-cache"))
          (hsPkgs."hxt-curl" or ((hsPkgs.pkgs-errors).buildDepError "hxt-curl"))
          (hsPkgs."hxt-regex-xmlschema" or ((hsPkgs.pkgs-errors).buildDepError "hxt-regex-xmlschema"))
          (hsPkgs."hxt-unicode" or ((hsPkgs.pkgs-errors).buildDepError "hxt-unicode"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ] ++ [
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }