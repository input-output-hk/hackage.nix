{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snaplet-actionlog"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozataman@gmail.com, mightybyte@gmail.com";
      author = "Soostone Inc. Ozgun Ataman, Doug Beardsley";
      homepage = "https://github.com/soostone/snaplet-actionlog";
      url = "";
      synopsis = "Generic action log snaplet for the Snap Framework";
      description = "This snaplet contains support for logging website actions.\nCommon actions are creating, updating, and deleting records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."digestive-functors" or ((hsPkgs.pkgs-errors).buildDepError "digestive-functors"))
          (hsPkgs."digestive-functors-heist" or ((hsPkgs.pkgs-errors).buildDepError "digestive-functors-heist"))
          (hsPkgs."digestive-functors-snap" or ((hsPkgs.pkgs-errors).buildDepError "digestive-functors-snap"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
          (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
          (hsPkgs."readable" or ((hsPkgs.pkgs-errors).buildDepError "readable"))
          (hsPkgs."restful-snap" or ((hsPkgs.pkgs-errors).buildDepError "restful-snap"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."snap-extras" or ((hsPkgs.pkgs-errors).buildDepError "snap-extras"))
          (hsPkgs."snaplet-persistent" or ((hsPkgs.pkgs-errors).buildDepError "snaplet-persistent"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."xmlhtml" or ((hsPkgs.pkgs-errors).buildDepError "xmlhtml"))
          ];
        buildable = true;
        };
      };
    }