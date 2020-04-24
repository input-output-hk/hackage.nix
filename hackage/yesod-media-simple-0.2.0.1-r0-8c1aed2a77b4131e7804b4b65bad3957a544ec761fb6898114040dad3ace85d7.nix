{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-media-simple"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2014 Michael Sloan";
      maintainer = "mgsloan@gmail.com";
      author = "Michael Sloan";
      homepage = "https://github.com/mgsloan/yesod-media-simple";
      url = "";
      synopsis = "Simple display of media types, served by yesod";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-core" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          ];
        buildable = true;
        };
      };
    }