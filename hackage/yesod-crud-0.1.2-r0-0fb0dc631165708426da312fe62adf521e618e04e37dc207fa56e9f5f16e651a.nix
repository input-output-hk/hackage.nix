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
        name = "yesod-crud";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Christopher League";
      maintainer = "league@contrapunctus.net";
      author = "Christopher League";
      homepage = "https://github.com/league/yesod-crud";
      url = "";
      synopsis = "Generic administrative CRUD operations as a Yesod subsite";
      description = "This package helps you build administrative CRUD\noperations (Create, Retrieve, Update, Delete) into\nyour web site, as Yesod subsites. There is a demo\nsite in the @example@ directory in the distribution.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.containers)
          (hsPkgs.MissingH)
          (hsPkgs.monad-control)
          (hsPkgs.persistent)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.stm)
          (hsPkgs.uuid)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.yesod-persistent)
        ];
      };
    };
  }