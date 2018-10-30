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
      specVersion = "1.10";
      identifier = {
        name = "yesod-crud-persist";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/yesod-crud-persist";
      url = "";
      synopsis = "Flexible CRUD subsite usable with Yesod and Persistent.";
      description = "Flexible CRUD subsite usable with Yesod and Persistent.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-persistent)
          (hsPkgs.persistent)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ];
      };
    };
  }