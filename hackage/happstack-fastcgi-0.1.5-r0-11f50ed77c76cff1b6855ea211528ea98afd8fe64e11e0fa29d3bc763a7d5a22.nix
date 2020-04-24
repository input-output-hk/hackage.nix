{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "happstack-fastcgi"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Tupil";
      maintainer = "tomberek [] gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Happstack extension for use with FastCGI.";
      description = "This library lets you write FastCGI programs with Happstack. This package\nreuses the SimpleHTTP API, making it very easy to port stand-alone HTTP\nprograms to FastCGI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
          (hsPkgs."fastcgi" or ((hsPkgs.pkgs-errors).buildDepError "fastcgi"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }