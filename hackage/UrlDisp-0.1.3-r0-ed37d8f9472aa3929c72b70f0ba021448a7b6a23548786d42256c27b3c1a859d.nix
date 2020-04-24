{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "UrlDisp"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Artyom Shalkhakov, Sterling Clover";
      maintainer = "Artyom Shalkhakov <artyom.shalkhakov@gmail.com>";
      author = "Artyom Shalkhakov, Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "Url dispatcher. Helps to retain friendly URLs in web applications.";
      description = "The aim of urldisp is to provide a simple, declarative and expressive URL routing in web applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."MaybeT" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT"))
          ];
        buildable = true;
        };
      };
    }