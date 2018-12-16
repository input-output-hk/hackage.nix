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
      specVersion = "1.6";
      identifier = {
        name = "servius";
        version = "1.1.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/hamlet";
      url = "";
      synopsis = "Serve Shakespearean templates via Warp";
      description = "Does not support any variable interpolation. Supports Hamlet and Lucius files (must have .hamlet and .lucius file extensions, respectively).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "servius" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.warp)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-extra)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.http-types)
            (hsPkgs.hamlet)
            (hsPkgs.shakespeare-css)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.mime-types)
          ];
        };
      };
    };
  }