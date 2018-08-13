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
        name = "yesod-pure";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/yesod-pure";
      url = "";
      synopsis = "Yesod in pure Haskell: no Template Haskell or QuasiQuotes";
      description = "Provides helper functions to simplify programming of Yesod without any code generation or non-Haskell DSLs. Mainly, this is focused on the routing quasi-quoter, though some templating help is provided as well.";
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