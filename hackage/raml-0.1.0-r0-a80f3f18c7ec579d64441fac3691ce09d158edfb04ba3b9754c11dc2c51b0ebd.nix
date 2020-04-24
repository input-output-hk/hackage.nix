{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "raml"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Fergus Noble";
      maintainer = "Fergus Noble <fergusnoble@gmail.com>";
      author = "Fergus Noble";
      homepage = "https://github.com/fnoble/raml";
      url = "";
      synopsis = "RESTful API Modeling Language (RAML) library for Haskell";
      description = "RESTful API Modeling Language (RAML) library for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }