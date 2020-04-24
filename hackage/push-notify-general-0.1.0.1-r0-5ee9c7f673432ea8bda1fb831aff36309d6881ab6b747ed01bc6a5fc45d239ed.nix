{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "push-notify-general"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Marcos Pividori <marcos.pividori@gmail.com>";
      author = "Marcos Pividori, mentored by Michael Snoyman.";
      homepage = "http://gsoc2013cwithmobiledevices.blogspot.com.ar/";
      url = "";
      synopsis = "A general library for sending/receiving push notif. through dif. services.";
      description = "This library offers an API for sending/receiving notifications, and handling the registration of devices on the server.\n\nIt provides a general abstraction which can be used to communicate through different services as APNS, GCM, MPNS.\n\nFor more information and test examples: <http://gsoc2013cwithmobiledevices.blogspot.com.ar/>\n\nGitHub repository: <https://github.com/MarcosPividori/GSoC-Communicating-with-mobile-devices>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."push-notify" or ((hsPkgs.pkgs-errors).buildDepError "push-notify"))
          (hsPkgs."push-notify-ccs" or ((hsPkgs.pkgs-errors).buildDepError "push-notify-ccs"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          ];
        buildable = true;
        };
      };
    }