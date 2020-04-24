{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "marmalade-upload"; version = "0.4"; };
      license = "MIT";
      copyright = "(C) 2014 Sebastian Wiesner";
      maintainer = "lunaryorn@gmail.com";
      author = "Sebastian Wiesner";
      homepage = "https://github.com/lunaryorn/marmalade-upload";
      url = "";
      synopsis = "Upload packages to Marmalade";
      description = "Upload Emacs packages to the Marmalade ELPA archive";
      buildType = "Simple";
      };
    components = {
      exes = {
        "marmalade-upload" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-client-multipart" or ((hsPkgs.pkgs-errors).buildDepError "http-client-multipart"))
            ] ++ (pkgs.lib).optional (!system.isOsx) (hsPkgs."udbus" or ((hsPkgs.pkgs-errors).buildDepError "udbus"));
          frameworks = (pkgs.lib).optionals (system.isOsx) [
            (pkgs."Security" or ((hsPkgs.pkgs-errors).sysDepError "Security"))
            (pkgs."CoreFoundation" or ((hsPkgs.pkgs-errors).sysDepError "CoreFoundation"))
            ];
          buildable = true;
          };
        };
      };
    }