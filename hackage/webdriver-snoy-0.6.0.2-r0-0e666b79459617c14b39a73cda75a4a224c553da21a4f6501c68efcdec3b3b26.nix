{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "webdriver-snoy";
        version = "0.6.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acurtis@spsu.edu";
      author = "Adam Curtis";
      homepage = "https://github.com/kallisti-dev/hs-webdriver";
      url = "";
      synopsis = "a Haskell client for the Selenium WebDriver protocol";
      description = "This is a temporary release to deal with upstream dependency issues. It will be deprecated as soon as <https://github.com/kallisti-dev/hs-webdriver/issues/53> is dealt with.\n\nA Selenium WebDriver client for Haskell.\nYou can use it to automate browser sessions\nfor testing, system administration, etc.\n\nFor more information about Selenium itself, see\n<http://seleniumhq.org/>\n\nTo find out what's been changed in this version and others,\nsee the change log at\n<https://github.com/kallisti-dev/hs-webdriver/blob/master/CHANGELOG.md>";
      buildType = "Simple";
    };
    components = {
      "webdriver-snoy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.network)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.zip-archive)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.directory-tree)
          (hsPkgs.temporary)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.exceptions)
          (hsPkgs.scientific)
          (hsPkgs.data-default)
          (hsPkgs.cond)
        ];
      };
      tests = {
        "test-search-baidu" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.webdriver)
            (hsPkgs.text)
            (hsPkgs.parallel)
          ];
        };
      };
    };
  }