{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ethereum-analyzer-webui"; version = "3.3.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "k_@berkeley.edu";
      author = "Kevin Chen";
      homepage = "https://github.com/zchn/ethereum-analyzer";
      url = "";
      synopsis = "A web frontend for ethereum-analyzer";
      description = "A web frontend for ethereum-analyzer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ethereum-analyzer" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."prometheus-client" or ((hsPkgs.pkgs-errors).buildDepError "prometheus-client"))
          (hsPkgs."prometheus-metrics-ghc" or ((hsPkgs.pkgs-errors).buildDepError "prometheus-metrics-ghc"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      exes = {
        "ethereum-analyzer-webui" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ethereum-analyzer" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer"))
            (hsPkgs."ethereum-analyzer-deps" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."ethereum-analyzer-webui" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-webui"))
            (hsPkgs."hflags" or ((hsPkgs.pkgs-errors).buildDepError "hflags"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            ];
          buildable = true;
          };
        };
      };
    }