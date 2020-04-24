{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "imgurder"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcolish@gmail.com";
      author = "Dan Colish";
      homepage = "";
      url = "";
      synopsis = "Uploader for Imgur";
      description = "A simple uploader for the Imgur api. You should register\nfor an api key";
      buildType = "Simple";
      };
    components = {
      exes = {
        "imgurder" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hxt-xpath" or ((hsPkgs.pkgs-errors).buildDepError "hxt-xpath"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }