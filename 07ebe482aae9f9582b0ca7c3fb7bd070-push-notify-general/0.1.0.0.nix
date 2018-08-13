{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "push-notify-general";
        version = "0.1.0.0";
      };
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
      "push-notify-general" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.hashable)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.push-notify)
          (hsPkgs.push-notify-ccs)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.xml-conduit)
          (hsPkgs.yesod)
        ];
      };
    };
  }