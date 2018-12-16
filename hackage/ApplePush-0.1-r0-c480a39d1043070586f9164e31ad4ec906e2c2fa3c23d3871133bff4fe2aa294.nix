{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ApplePush";
        version = "0.1";
      };
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
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.json)
        ];
      };
      exes = {
        "applepushtest" = {
          depends = [ (hsPkgs.base) ];
        };
      };
    };
  }