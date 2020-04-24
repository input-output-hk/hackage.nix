{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "car-pool"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/car-pool/";
      url = "";
      synopsis = "Simple web-server for organizing car-pooling for an event";
      description = "Simple web-server for organizing car-pooling for an event";
      buildType = "Simple";
      };
    components = {
      exes = {
        "car-pool" = {
          depends = [
            (hsPkgs."spreadsheet" or ((hsPkgs.pkgs-errors).buildDepError "spreadsheet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."digestive-functors-blaze" or ((hsPkgs.pkgs-errors).buildDepError "digestive-functors-blaze"))
            (hsPkgs."digestive-functors-happstack" or ((hsPkgs.pkgs-errors).buildDepError "digestive-functors-happstack"))
            (hsPkgs."digestive-functors" or ((hsPkgs.pkgs-errors).buildDepError "digestive-functors"))
            (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }