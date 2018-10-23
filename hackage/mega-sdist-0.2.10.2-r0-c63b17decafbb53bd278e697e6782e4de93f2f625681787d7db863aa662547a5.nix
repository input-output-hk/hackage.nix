{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "mega-sdist";
        version = "0.2.10.2";
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.shelly)
            (hsPkgs.conduit)
            (hsPkgs.zlib-conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.tar)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.network)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }