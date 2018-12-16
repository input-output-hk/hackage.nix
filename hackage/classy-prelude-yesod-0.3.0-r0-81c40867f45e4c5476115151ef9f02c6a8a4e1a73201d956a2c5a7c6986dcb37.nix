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
        name = "classy-prelude-yesod";
        version = "0.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/classy-prelude";
      url = "";
      synopsis = "Provide a classy prelude including common Yesod functionality.";
      description = "This is an extension of classy-prelude-conduit, adding in commonly used functions and data types from Yesod.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.classy-prelude-conduit)
          (hsPkgs.yesod)
          (hsPkgs.yesod-newsfeed)
          (hsPkgs.yesod-static)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.persistent)
          (hsPkgs.aeson)
          (hsPkgs.data-default)
        ];
      };
    };
  }