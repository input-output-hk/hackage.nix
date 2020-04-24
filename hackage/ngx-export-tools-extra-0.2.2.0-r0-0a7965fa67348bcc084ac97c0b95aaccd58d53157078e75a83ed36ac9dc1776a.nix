{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ede = true; experimentalede = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ngx-export-tools-extra"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019-2020 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "https://github.com/lyokha/ngx-export-tools-extra";
      url = "";
      synopsis = "More extra tools for Nginx haskell module";
      description = "More extra tools for\n<https://github.com/lyokha/nginx-haskell-module Nginx haskell module>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base64" or ((hsPkgs.pkgs-errors).buildDepError "base64"))
          (hsPkgs."ngx-export" or ((hsPkgs.pkgs-errors).buildDepError "ngx-export"))
          (hsPkgs."ngx-export-tools" or ((hsPkgs.pkgs-errors).buildDepError "ngx-export-tools"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."enclosed-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "enclosed-exceptions"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (pkgs.lib).optionals (flags.ede) (if flags.experimentalede
          then [
            (hsPkgs."ede" or ((hsPkgs.pkgs-errors).buildDepError "ede"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
            ]
          else [
            (hsPkgs."ede" or ((hsPkgs.pkgs-errors).buildDepError "ede"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
            ]);
        buildable = true;
        };
      };
    }