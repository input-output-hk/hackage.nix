{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "classy-prelude-yesod"; version = "1.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable#readme";
      url = "";
      synopsis = "Provide a classy prelude including common Yesod functionality.";
      description = "See docs and README at <http://www.stackage.org/package/classy-prelude-yesod>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.classy-prelude-conduit)
          (hsPkgs.data-default)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.persistent)
          (hsPkgs.yesod)
          (hsPkgs.yesod-newsfeed)
          (hsPkgs.yesod-static)
          ];
        };
      };
    }