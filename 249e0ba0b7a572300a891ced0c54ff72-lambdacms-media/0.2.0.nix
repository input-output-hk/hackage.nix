{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "lambdacms-media";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hoppinger BV";
        maintainer = "mats@AT-hoppinger.com";
        author = "Mats Rietdijk, Cies Breijs";
        homepage = "http://lambdacms.org";
        url = "";
        synopsis = "LambdaCms \"media\" extension";
        description = "LambdaCms is a Content Management System (CMS) in Haskell\nusing Yesod. This package contains the \"media\" extension.";
        buildType = "Simple";
      };
      components = {
        "lambdacms-media" = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod
            hsPkgs.yesod-form
            hsPkgs.lambdacms-core
            hsPkgs.persistent
            hsPkgs.text
            hsPkgs.time
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.shakespeare
          ];
        };
      };
    }