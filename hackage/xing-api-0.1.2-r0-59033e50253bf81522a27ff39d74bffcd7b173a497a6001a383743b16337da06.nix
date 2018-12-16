{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      demos = false;
      minimal-demo = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "xing-api";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 Jan Ahrens";
      maintainer = "Jan Ahrens";
      author = "Jan Ahrens";
      homepage = "http://github.com/JanAhrens/xing-api-haskell";
      url = "";
      synopsis = "Wrapper for the XING API, v1.";
      description = "This package is currently under development and not considered stable.\nThe versioning follows <http://semver.org> and the first stable version will be release as 1.0.0.\n\nThis package includes a couple of demo programs.\nBy default these demos won't be built and you'll only install the library.\nYou have to set the /demos/ flag if you want to install them.\nTo use these demos, you also have to obtain an API consumer key from\n<https://dev.xing.com/applications> (a /test key/ will suffice).\n\n>cabal install -f demos xing-api";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
        ];
      };
      exes = {
        "xing-api-cli-demo" = {
          depends = pkgs.lib.optionals (flags.demos) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.monad-control)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.xing-api)
          ];
        };
        "xing-api-yesod-demo" = {
          depends = pkgs.lib.optionals (flags.demos) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hamlet)
            (hsPkgs.http-conduit)
            (hsPkgs.shakespeare-i18n)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.warp)
            (hsPkgs.xing-api)
            (hsPkgs.yesod-core)
          ];
        };
        "xing-api-minimal-demo" = {
          depends = pkgs.lib.optionals (flags.minimal-demo) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.xing-api)
          ];
        };
      };
      tests = {
        "TestMain" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.xing-api)
          ];
        };
      };
    };
  }