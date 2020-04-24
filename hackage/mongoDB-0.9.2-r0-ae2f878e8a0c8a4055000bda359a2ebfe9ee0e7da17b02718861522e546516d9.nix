{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "mongoDB"; version = "0.9.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010-2010 10gen Inc. & Scott Parish";
      maintainer = "Tony Hannan <tony@10gen.com>";
      author = "Tony Hannan <tony@10gen.com> & Scott Parish <srp@srparish.net>";
      homepage = "http://github.com/TonyGen/mongoDB-haskell";
      url = "";
      synopsis = "MongoDB driver";
      description = "This module lets you connect to MongoDB (www.mongodb.org) and do inserts, queries, updates, etc. Please see the example in Database.MongoDB and the tutorial from the homepage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."nano-md5" or ((hsPkgs.pkgs-errors).buildDepError "nano-md5"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }