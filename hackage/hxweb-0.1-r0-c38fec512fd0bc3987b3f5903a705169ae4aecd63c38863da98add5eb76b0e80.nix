{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hxweb"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2006, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Minimal webframework using fastcgi, libxml2 and libxslt.";
      description = "Fast template based web-framework using libxslt and fastcgi.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
          (hsPkgs."fastcgi" or ((hsPkgs.pkgs-errors).buildDepError "fastcgi"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."libxml" or ((hsPkgs.pkgs-errors).buildDepError "libxml"))
          (hsPkgs."xslt" or ((hsPkgs.pkgs-errors).buildDepError "xslt"))
          ];
        buildable = true;
        };
      };
    }