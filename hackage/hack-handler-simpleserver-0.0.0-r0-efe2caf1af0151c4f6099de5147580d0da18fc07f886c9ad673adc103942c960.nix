{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hack-handler-simpleserver"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/hack-handler-simpleserver/tree/master";
      url = "";
      synopsis = "A simplistic HTTP server handler for Hack.";
      description = "FIXME";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.hack)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.web-encodings)
          (hsPkgs.data-default)
          ];
        };
      };
    }