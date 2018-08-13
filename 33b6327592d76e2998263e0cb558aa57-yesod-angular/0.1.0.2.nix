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
        name = "yesod-angular";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Reichert <creichert07@gmail.com>";
      author = "Christopher Reichert <creichert07@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Angular JS integratoin";
      description = "Angular JS integration for Yesod.\n\nThis module is based on Michael Snoyman's original work\nin the <https://github.com/snoyberg/yesod-js> repository.";
      buildType = "Simple";
    };
    components = {
      "yesod-angular" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.yesod)
        ];
      };
    };
  }