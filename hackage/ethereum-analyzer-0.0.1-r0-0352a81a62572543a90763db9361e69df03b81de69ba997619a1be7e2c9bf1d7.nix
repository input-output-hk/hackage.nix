{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ethereum-analyzer"; version = "0.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "k_@berkeley.edu";
      author = "Kevin Chen";
      homepage = "https://github.com/ethereumK/ethereum-analyzer";
      url = "";
      synopsis = "A Ethereum contract analyzer.";
      description = "A Ethereum contract analyzer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bimap" or ((hsPkgs.pkgs-errors).buildDepError "bimap"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit-combinators" or ((hsPkgs.pkgs-errors).buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ethereum-analyzer-deps" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-deps"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."hexstring" or ((hsPkgs.pkgs-errors).buildDepError "hexstring"))
          (hsPkgs."hflags" or ((hsPkgs.pkgs-errors).buildDepError "hflags"))
          (hsPkgs."hoopl" or ((hsPkgs.pkgs-errors).buildDepError "hoopl"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."json-rpc" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc"))
          (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."prometheus-client" or ((hsPkgs.pkgs-errors).buildDepError "prometheus-client"))
          (hsPkgs."prometheus-metrics-ghc" or ((hsPkgs.pkgs-errors).buildDepError "prometheus-metrics-ghc"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."wai-middleware-prometheus" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-prometheus"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      exes = {
        "ethereum-analyzer" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ethereum-analyzer" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer"))
            (hsPkgs."ethereum-analyzer-deps" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."hflags" or ((hsPkgs.pkgs-errors).buildDepError "hflags"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            ];
          buildable = true;
          };
        "ea-dump-contract" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ethereum-analyzer" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer"))
            (hsPkgs."ethereum-analyzer-deps" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."hflags" or ((hsPkgs.pkgs-errors).buildDepError "hflags"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."ethereum-analyzer" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer"))
            (hsPkgs."ethereum-analyzer-deps" or ((hsPkgs.pkgs-errors).buildDepError "ethereum-analyzer-deps"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."hoopl" or ((hsPkgs.pkgs-errors).buildDepError "hoopl"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }