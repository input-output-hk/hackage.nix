{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; split-base = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "openid"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Trevor Elliott <trevor@geekgateway.com>";
      maintainer = "trevor@geekgateway.com";
      author = "Trevor Elliott";
      homepage = "http://github.com/elliottt/hsopenid";
      url = "";
      synopsis = "An implementation of the OpenID-2.0 spec.";
      description = "An implementation of the OpenID-2.0 spec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          ];
        buildable = true;
        };
      exes = {
        "openid-test" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."openid" or ((hsPkgs.pkgs-errors).buildDepError "openid"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }