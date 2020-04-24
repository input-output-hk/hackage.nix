{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jml-web-service"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>";
      author = "";
      homepage = "https://github.com/jml/jml-web-service#readme";
      url = "";
      synopsis = "Common utilities for running a web service";
      description = "This is a personal set of helper functions used to create a web API service.\n\nWe assume that the service is intended to run in a container on a Kubernetes\ncluster, but it\\'s likely that these routines would be useful for other\nservices.\n\nWe provide command-line options for use with optparse-applicative,\nPrometheus instrumentation, and some basic logging.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."prometheus-client" or ((hsPkgs.pkgs-errors).buildDepError "prometheus-client"))
          (hsPkgs."prometheus-metrics-ghc" or ((hsPkgs.pkgs-errors).buildDepError "prometheus-metrics-ghc"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."jml-web-service" or ((hsPkgs.pkgs-errors).buildDepError "jml-web-service"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            ];
          buildable = true;
          };
        };
      };
    }