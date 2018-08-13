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
      specVersion = "1.2";
      identifier = {
        name = "translate";
        version = "2009.12.17";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/translate";
      url = "";
      synopsis = "Haskell binding to Google translate";
      description = "translate \"en\" \"fr\" \"hello\"";
      buildType = "Simple";
    };
    components = {
      "translate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.curl)
          (hsPkgs.json)
          (hsPkgs.network)
        ];
      };
    };
  }