{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "mongoDB"; version = "0.6.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010-2010 Scott Parish & 10gen Inc.";
      maintainer = "Tony Hannan <tony@10gen.com>";
      author = "Scott Parish <srp@srparish.net> & Tony Hannan <tony@10gen.com>";
      homepage = "http://github.com/TonyGen/mongoDB";
      url = "";
      synopsis = "A driver for MongoDB";
      description = "This module lets you connect to MongoDB, do inserts, queries, updates, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."nano-md5" or ((hsPkgs.pkgs-errors).buildDepError "nano-md5"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
          ];
        buildable = true;
        };
      };
    }