{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "ApplePush"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Moos <chris@tech9computers.com>";
      author = "Chris Moos <chris@tech9computers.com>";
      homepage = "";
      url = "";
      synopsis = "Library for Apple Push Notification Service";
      description = "This library provides an interface to send notifications with the Apple Push Notification Service.\n\nNote: Your connection to Apple's Push Notification service must be secured with SSL. Currently, Haskell's support\nfor SSL is incomplete, therefore you should use an SSL tunnel to connect your application to the push service, such as                       stunnel.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          ];
        buildable = true;
        };
      exes = {
        "applepushtest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }