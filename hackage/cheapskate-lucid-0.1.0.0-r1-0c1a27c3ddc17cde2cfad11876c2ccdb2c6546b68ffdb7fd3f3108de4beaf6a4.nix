{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cheapskate-lucid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cheapskate-lucid";
      url = "";
      synopsis = "Use cheapskate with Lucid";
      description = "A package for rendering Markdown (parsed via cheapskate) to Lucid's HTML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."cheapskate" or ((hsPkgs.pkgs-errors).buildDepError "cheapskate"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          ];
        buildable = true;
        };
      };
    }