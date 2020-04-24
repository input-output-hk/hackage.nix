{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kafka-device-spacenav"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "(c) 2016-17 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/kafka-device-spacenav";
      url = "https://bitbucket.org/functionally/kafka-device-spacenav/downloads/kafka-device-spacenav-0.1.5.0.tar.gz";
      synopsis = "Linux SpaceNavigator events via a Kafka message broker";
      description = "This package contains functions for passing Linux device events from a SpaceNavigator \\<<http://www.3dconnexion.com/products/spacemouse/spacenavigator.html>\\> to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device/>\\>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."kafka-device" or ((hsPkgs.pkgs-errors).buildDepError "kafka-device"))
          (hsPkgs."milena" or ((hsPkgs.pkgs-errors).buildDepError "milena"))
          ];
        buildable = true;
        };
      exes = {
        "kafka-device-spacenav" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."kafka-device" or ((hsPkgs.pkgs-errors).buildDepError "kafka-device"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."milena" or ((hsPkgs.pkgs-errors).buildDepError "milena"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }