{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "kafka-client-sync"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Felix Mulder";
      maintainer = "felix.mulder@gmail.com";
      author = "Felix Mulder";
      homepage = "";
      url = "";
      synopsis = "Synchronous Kafka Client";
      description = "A synchronous API on top of librdkafka using hw-kafka-client";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hw-kafka-client" or ((hsPkgs.pkgs-errors).buildDepError "hw-kafka-client"))
          ];
        buildable = true;
        };
      tests = {
        "kafka-client-sync-tests" = {
          depends = [
            (hsPkgs."kafka-client-sync" or ((hsPkgs.pkgs-errors).buildDepError "kafka-client-sync"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hw-kafka-client" or ((hsPkgs.pkgs-errors).buildDepError "hw-kafka-client"))
            (hsPkgs."monad-parallel" or ((hsPkgs.pkgs-errors).buildDepError "monad-parallel"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }