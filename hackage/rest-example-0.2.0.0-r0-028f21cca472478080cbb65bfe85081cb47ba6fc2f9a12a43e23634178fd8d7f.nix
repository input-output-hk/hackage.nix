{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { happstack = false; wai = false; snap = false; gen = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rest-example"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Silk B.V.";
      maintainer = "code@silk.co";
      author = "Silk B.V.";
      homepage = "http://www.github.com/silkapp/rest";
      url = "";
      synopsis = "Example project for rest";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."generic-aeson" or ((hsPkgs.pkgs-errors).buildDepError "generic-aeson"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."json-schema" or ((hsPkgs.pkgs-errors).buildDepError "json-schema"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."regular" or ((hsPkgs.pkgs-errors).buildDepError "regular"))
          (hsPkgs."regular-xmlpickler" or ((hsPkgs.pkgs-errors).buildDepError "regular-xmlpickler"))
          (hsPkgs."rest-core" or ((hsPkgs.pkgs-errors).buildDepError "rest-core"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "rest-example-happstack" = {
          depends = (pkgs.lib).optionals (flags.happstack) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rest-core" or ((hsPkgs.pkgs-errors).buildDepError "rest-core"))
            (hsPkgs."rest-example" or ((hsPkgs.pkgs-errors).buildDepError "rest-example"))
            (hsPkgs."rest-happstack" or ((hsPkgs.pkgs-errors).buildDepError "rest-happstack"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ];
          buildable = if flags.happstack then true else false;
          };
        "rest-example-wai" = {
          depends = (pkgs.lib).optionals (flags.wai) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rest-core" or ((hsPkgs.pkgs-errors).buildDepError "rest-core"))
            (hsPkgs."rest-example" or ((hsPkgs.pkgs-errors).buildDepError "rest-example"))
            (hsPkgs."rest-wai" or ((hsPkgs.pkgs-errors).buildDepError "rest-wai"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ];
          buildable = if flags.wai then true else false;
          };
        "rest-example-snap" = {
          depends = (pkgs.lib).optionals (flags.snap) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rest-core" or ((hsPkgs.pkgs-errors).buildDepError "rest-core"))
            (hsPkgs."rest-example" or ((hsPkgs.pkgs-errors).buildDepError "rest-example"))
            (hsPkgs."rest-snap" or ((hsPkgs.pkgs-errors).buildDepError "rest-snap"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ];
          buildable = if flags.snap then true else false;
          };
        "rest-example-gen" = {
          depends = (pkgs.lib).optionals (flags.gen) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rest-core" or ((hsPkgs.pkgs-errors).buildDepError "rest-core"))
            (hsPkgs."rest-example" or ((hsPkgs.pkgs-errors).buildDepError "rest-example"))
            (hsPkgs."rest-gen" or ((hsPkgs.pkgs-errors).buildDepError "rest-gen"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            ];
          buildable = if flags.gen then true else false;
          };
        };
      };
    }