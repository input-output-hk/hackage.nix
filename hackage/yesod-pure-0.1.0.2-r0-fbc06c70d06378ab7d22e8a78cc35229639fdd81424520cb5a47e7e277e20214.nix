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
        name = "yesod-pure";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/yesod-pure";
      url = "";
      synopsis = "Yesod in pure Haskell: no Template Haskell or QuasiQuotes (deprecated)";
      description = "NOTE: Most of the concepts from this package have made it into yesod-core itself since the 1.2 release. Please see <http://www.yesodweb.com/blog/2013/03/yesod-dispatch-version-1-2> for more information, or search the Haddocks for @LiteApp@.\n\nProvides helper functions to simplify programming of Yesod without any code generation or non-Haskell DSLs. Mainly, this is focused on the routing quasi-quoter, though some templating help is provided as well.";
      buildType = "Simple";
    };
    components = {
      "yesod-pure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.text)
          (hsPkgs.fast-logger)
        ];
      };
    };
  }