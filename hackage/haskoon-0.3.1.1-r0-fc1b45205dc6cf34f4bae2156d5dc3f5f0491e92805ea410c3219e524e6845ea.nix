{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "haskoon"; version = "0.3.1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@factisresearch.com>, Dirk Spöri <spoeri@factisresearch.com>, Stefan Wehr <wehr@factisresearch.com>";
      author = "David Leuschner <leuschner@factisresearch.com>, Dirk Spöri <spoeri@factisresearch.com>, Stefan Wehr <wehr@factisresearch.com>";
      homepage = "";
      url = "";
      synopsis = "Web Application Abstraction";
      description = "Web Astraction Layer with a binding to CGI providing a simple way to\nmap parameter and header values to data structures (inspired by HAppS)\nand a sitemap functionality to map URLs to functions that answer the request.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."MaybeT" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT"))
          (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
          (hsPkgs."hsx" or ((hsPkgs.pkgs-errors).buildDepError "hsx"))
          ] ++ [
          (hsPkgs."fastcgi" or ((hsPkgs.pkgs-errors).buildDepError "fastcgi"))
          ];
        buildable = true;
        };
      };
    }