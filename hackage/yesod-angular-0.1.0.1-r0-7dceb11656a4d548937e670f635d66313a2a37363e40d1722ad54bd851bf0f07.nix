{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yesod-angular";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christopher Reichert <creichert07@gmail.com>";
      author = "Christopher Reichert <creichert07@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Yesod Angular JS integration.";
      description = "Yesod Angular JS integration.\nThis module is based on Michael Snoyman's original work\nin the <https://github.com/snoyberg/yesod-js> repository.";
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