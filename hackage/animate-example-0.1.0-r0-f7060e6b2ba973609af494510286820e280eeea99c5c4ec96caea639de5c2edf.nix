{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "animate-example"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "https://github.com/jxv/animate#readme";
      url = "";
      synopsis = "Animation for sprites";
      description = "Prototypical sprite animation with type-safety.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "animate-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."animate" or ((hsPkgs.pkgs-errors).buildDepError "animate"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."sdl2-image" or ((hsPkgs.pkgs-errors).buildDepError "sdl2-image"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."StateVar" or ((hsPkgs.pkgs-errors).buildDepError "StateVar"))
            ];
          buildable = true;
          };
        };
      };
    }