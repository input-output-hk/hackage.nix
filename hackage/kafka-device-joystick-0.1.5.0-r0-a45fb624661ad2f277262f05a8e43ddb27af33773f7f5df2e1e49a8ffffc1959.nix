{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kafka-device-joystick"; version = "0.1.5.0"; };
      license = "MIT";
      copyright = "(c) 2016 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/kafka-device-joystick";
      url = "https://bitbucket.org/functionally/kafka-device-joystick/downloads/kafka-device-joystick-0.1.5.0.tar.gz";
      synopsis = "Linux joystick events via a Kafka message broker";
      description = "This package contains functions for passing Linux joystick events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  The joystick's driver must conform to the Linux Joystick API \\<<https://www.kernel.org/doc/Documentation/input/joystick-api.txt>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device/>\\>.";
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
        "kafka-device-joystick" = {
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
        };
      };
    }