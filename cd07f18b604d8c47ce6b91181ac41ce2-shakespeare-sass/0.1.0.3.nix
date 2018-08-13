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
      specVersion = "1.10";
      identifier = {
        name = "shakespeare-sass";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brcha@gna.org";
      author = "Filip Brcic";
      homepage = "https://github.com/brcha/shakespeare-sass";
      url = "";
      synopsis = "SASS support for Shakespeare and Yesod";
      description = "SASS support for Shakespeare and Yesod";
      buildType = "Simple";
    };
    components = {
      "shakespeare-sass" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.shakespeare)
          (hsPkgs.hsass)
        ];
      };
    };
  }