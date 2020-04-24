{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-websockets-extra"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "";
      url = "";
      synopsis = "Extension to yesod-websockets";
      description = "Adding exceptions to ws handling";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yesod-websockets" or ((hsPkgs.pkgs-errors).buildDepError "yesod-websockets"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."enclosed-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "enclosed-exceptions"))
          ];
        buildable = true;
        };
      };
    }