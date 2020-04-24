{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.4";
      identifier = { name = "CouchDB"; version = "0.8.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Arjun Guha and Brendan Hickey";
      maintainer = "Arjun Guha <arjun@cs.brown.edu>";
      author = "Arjun Guha, Brendan Hickey";
      homepage = "http://github.com/arjunguha/haskell-couchdb/";
      url = "";
      synopsis = "CouchDB interface";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          ];
        buildable = true;
        };
      };
    }