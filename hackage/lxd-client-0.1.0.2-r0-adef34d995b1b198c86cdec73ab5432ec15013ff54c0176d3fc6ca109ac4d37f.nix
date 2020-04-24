{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lxd-client"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "2017 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/haskell-lxd-client#readme";
      url = "";
      synopsis = "LXD client written in Haskell.";
      description = "Implementation of the LXD client protocol in Haskell.\n\nThis module implements the LXD client protocol in Haskell using servant and\nwebsockets. It allows you to manage LXD containers and other resources\ndirectly from Haskell.\n\nMore information and a tutorial is in \"Network.LXD.Client.Commands\".\n\nAccompanying blog post:\n<https://deliquus.com/posts/2017-10-02-using-servant-to-orchestrate-lxd-containers.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."bimap" or ((hsPkgs.pkgs-errors).buildDepError "bimap"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
          (hsPkgs."x509-store" or ((hsPkgs.pkgs-errors).buildDepError "x509-store"))
          (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      exes = {
        "lxd-client-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lxd-client" or ((hsPkgs.pkgs-errors).buildDepError "lxd-client"))
            ];
          buildable = true;
          };
        };
      tests = {
        "lxd-client-integration" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lxd-client" or ((hsPkgs.pkgs-errors).buildDepError "lxd-client"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }