{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yesod-comments"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@pbrisbin.com";
      author = "Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-comments";
      url = "";
      synopsis = "A generic comments interface for a Yesod application";
      description = "A generic comments interface for a Yesod application";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.yesod)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-goodies)
          (hsPkgs.persistent)
          (hsPkgs.directory)
          (hsPkgs.time)
          ];
        };
      };
    }