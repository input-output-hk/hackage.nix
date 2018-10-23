{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "lambdacms-media";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "(c) 2014 Hoppinger";
      maintainer = "mats@AT-hoppinger.com";
      author = "Mats Rietdijk, Cies Breijs";
      homepage = "http://lambdacms.org/media";
      url = "";
      synopsis = "Media CMS extension for Yesod apps";
      description = "LambdaCms is a Content Management System (CMS) in Haskell\nusing Yesod. This package contains the \"media\" extension.";
      buildType = "Simple";
    };
    components = {
      "lambdacms-media" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.yesod-form)
          (hsPkgs.lambdacms-core)
          (hsPkgs.persistent)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.shakespeare)
        ];
      };
    };
  }