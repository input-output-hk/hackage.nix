{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "webcrank-wai"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Richard Wallace";
      maintainer = "Richard Wallace <rwallace@thewallacepack.net>";
      author = "Richard Wallace <rwallace@thewallacepack.net>";
      homepage = "https://github.com/webcrank/webcrank-wai";
      url = "";
      synopsis = "Build a WAI Application from Webcrank Resources";
      description = "Build a WAI Application from Webcrank Resources.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-lens" or ((hsPkgs.pkgs-errors).buildDepError "wai-lens"))
          (hsPkgs."webcrank" or ((hsPkgs.pkgs-errors).buildDepError "webcrank"))
          (hsPkgs."webcrank-dispatch" or ((hsPkgs.pkgs-errors).buildDepError "webcrank-dispatch"))
          ];
        buildable = true;
        };
      };
    }