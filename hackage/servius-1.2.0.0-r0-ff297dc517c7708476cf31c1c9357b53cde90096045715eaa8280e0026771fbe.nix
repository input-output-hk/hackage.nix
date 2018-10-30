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
      specVersion = "1.10";
      identifier = {
        name = "servius";
        version = "1.2.0.0";
      };
      license = "MIT";
      copyright = "2015 Michael Snoyman";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/servius#readme";
      url = "";
      synopsis = "Warp web server with template rendering";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "servius" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.markdown)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
          ];
        };
      };
    };
  }