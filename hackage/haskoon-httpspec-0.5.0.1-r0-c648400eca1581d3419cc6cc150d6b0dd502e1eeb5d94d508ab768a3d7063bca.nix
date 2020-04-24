{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "haskoon-httpspec"; version = "0.5.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "David Leuschner <leuschner@factisresearch.com>, Dirk Spoeri <spoeri@factisresearch.com>, Stefan Wehr <wehr@factisresearch.com>";
      author = "David Leuschner <leuschner@factisresearch.com>, Dirk Spoeri <spoeri@factisresearch.com>, Stefan Wehr <wehr@factisresearch.com>";
      homepage = "";
      url = "";
      synopsis = "Integrating HttpSpec with Haskoon";
      description = "Allows to send and receive Http requests using the\nHttpSpec specifications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."haskoon" or ((hsPkgs.pkgs-errors).buildDepError "haskoon"))
          (hsPkgs."bidispec" or ((hsPkgs.pkgs-errors).buildDepError "bidispec"))
          (hsPkgs."httpspec" or ((hsPkgs.pkgs-errors).buildDepError "httpspec"))
          ];
        buildable = true;
        };
      };
    }