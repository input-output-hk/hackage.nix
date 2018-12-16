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
        name = "yesod-angular-ui";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, Marcin Tolysz All rights reserved.\nCopyright (c) 2012 Michael Snoyman, http://www.yesodweb.com/\nCopyright 2010, Michael Snoyman. All rights reserved.";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/yesod-angular-ui";
      url = "";
      synopsis = "Angular Helpers";
      description = "Library for developing i18n webapps with yesod and angular.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.shakespeare)
          (hsPkgs.directory)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.containers)
          (hsPkgs.resourcet)
          (hsPkgs.blaze-html)
          (hsPkgs.hjsmin)
        ];
      };
    };
  }