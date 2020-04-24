{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; formlets = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-facebook"; version = "0.22"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "http://src.seereason.com/happstack-facebook/";
      url = "";
      synopsis = "A package for building Facebook applications using Happstack";
      description = "A package for building Facebook applications using Happstack";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
          (hsPkgs."harp" or ((hsPkgs.pkgs-errors).buildDepError "harp"))
          (hsPkgs."happstack-ixset" or ((hsPkgs.pkgs-errors).buildDepError "happstack-ixset"))
          (hsPkgs."happstack-data" or ((hsPkgs.pkgs-errors).buildDepError "happstack-data"))
          (hsPkgs."happstack-util" or ((hsPkgs.pkgs-errors).buildDepError "happstack-util"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."happstack-state" or ((hsPkgs.pkgs-errors).buildDepError "happstack-state"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
          (hsPkgs."hsx" or ((hsPkgs.pkgs-errors).buildDepError "hsx"))
          (hsPkgs."applicative-extras" or ((hsPkgs.pkgs-errors).buildDepError "applicative-extras"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."RJson" or ((hsPkgs.pkgs-errors).buildDepError "RJson"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."happstack" or ((hsPkgs.pkgs-errors).buildDepError "happstack"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."web-routes" or ((hsPkgs.pkgs-errors).buildDepError "web-routes"))
          (hsPkgs."web-routes-mtl" or ((hsPkgs.pkgs-errors).buildDepError "web-routes-mtl"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optionals (flags.base4) [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          ]) ++ (pkgs.lib).optionals (flags.formlets) [
          (hsPkgs."happstack-extra" or ((hsPkgs.pkgs-errors).buildDepError "happstack-extra"))
          (hsPkgs."formlets" or ((hsPkgs.pkgs-errors).buildDepError "formlets"))
          (hsPkgs."formlets-hsp" or ((hsPkgs.pkgs-errors).buildDepError "formlets-hsp"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          build-tools = [
            (hsPkgs.buildPackages.trhsx or (pkgs.buildPackages.trhsx or ((hsPkgs.pkgs-errors).buildToolDepError "trhsx")))
            ];
          buildable = false;
          };
        };
      };
    }