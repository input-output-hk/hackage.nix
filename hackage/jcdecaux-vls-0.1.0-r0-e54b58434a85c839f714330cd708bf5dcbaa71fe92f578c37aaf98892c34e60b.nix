{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "jcdecaux-vls"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright 2013 Antoine Hérault";
      maintainer = "antoine.herault@gmail.com";
      author = "Antoine Hérault";
      homepage = "http://github.com/Herzult/jcdecaux-vls";
      url = "";
      synopsis = "JCDecaux self-service bicycles API client";
      description = "The JCDecaux self-service bicycles API provides access to real-time\ninformations on the stations & contracts of the service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }