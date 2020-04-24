{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wai-middleware-route"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aka.spin@gmail.com";
      author = "Alexander Dorofeev";
      homepage = "https://github.com/akaspin/wai-middleware-route";
      url = "";
      synopsis = "Wai routing middleware";
      description = "\\\"Just enough\\\" request dispatching Middleware for Wai.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ];
        buildable = true;
        };
      };
    }