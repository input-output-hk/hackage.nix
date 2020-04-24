{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskakafka"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Thomas Dimson <tdimson@cs.stanford.edu>";
      author = "Thomas Dimson <tdimson@cs.stanford.edu>";
      homepage = "http://github.com/cosbynator/haskakafka";
      url = "";
      synopsis = "Kafka bindings for Haskell";
      description = "Use Apache Kafka in Haskell through the librdkafka\nC library. The library is preliminary but fully\nfunctional.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."rdkafka" or ((hsPkgs.pkgs-errors).sysDepError "rdkafka"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskakafka" or ((hsPkgs.pkgs-errors).buildDepError "haskakafka"))
            ];
          buildable = true;
          };
        };
      };
    }