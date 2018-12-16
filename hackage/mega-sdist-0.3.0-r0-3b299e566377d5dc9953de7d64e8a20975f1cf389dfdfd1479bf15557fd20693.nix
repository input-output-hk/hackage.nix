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
      specVersion = "1.8";
      identifier = {
        name = "mega-sdist";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mega-sdist";
      url = "";
      synopsis = "Handles uploading to Hackage from mega repos";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mega-sdist" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.http-conduit)
            (hsPkgs.tar-conduit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.typed-process)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }