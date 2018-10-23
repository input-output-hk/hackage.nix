{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-static-angular";
        version = "0.1.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "John Lenz <lenz@math.uic.edu>";
      author = "John Lenz <lenz@math.uic.edu>";
      homepage = "https://bitbucket.org/wuzzeb/yesod-static-generators";
      url = "";
      synopsis = "Yesod generators for embedding AngularJs code into yesod-static at compile time";
      description = "yesod-static supports generators which run at compile time which create static\nresources to embed directly into the executable.  This package leverages this to\nprovide automatic management of <http://angularjs.org/ AngularJS> code.  During\ndevelopment individual files served and reloaded on every request.  When compiling\nfor production, the files are minimized, compressed, and then embedded into the\nexecutable.";
      buildType = "Simple";
    };
    components = {
      "yesod-static-angular" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hamlet)
          (hsPkgs.language-javascript)
          (hsPkgs.mime-types)
          (hsPkgs.shakespeare)
          (hsPkgs.shakespeare-js)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-static)
        ];
      };
      exes = {
        "example-production" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.shakespeare)
            (hsPkgs.shakespeare-css)
            (hsPkgs.yesod)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-static-angular)
          ];
        };
        "example-dev" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.shakespeare)
            (hsPkgs.shakespeare-css)
            (hsPkgs.yesod)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-static-angular)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hamlet)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-test)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-static-angular)
          ];
        };
      };
    };
  }