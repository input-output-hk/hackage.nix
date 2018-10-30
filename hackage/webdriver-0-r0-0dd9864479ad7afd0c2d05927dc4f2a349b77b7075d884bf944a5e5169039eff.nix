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
      specVersion = "1.6";
      identifier = {
        name = "webdriver";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acurtis@spsu.edu";
      author = "Adam Curtis";
      homepage = "https://github.com/kallisti-dev/hs-webdriver";
      url = "";
      synopsis = "a Haskell client for the Selenium WebDriver protocol";
      description = "A Selenium WebDriver client for the Haskell\nprogramming language. You can use it to automate browser\nsessions for testing, system administration, etc.\nFor more information about Selenium itself, see\n<http://seleniumhq.org/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.HTTP)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.Cabal)
          (hsPkgs.zip-archive)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.unordered-containers)
          (hsPkgs.attoparsec)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.vector)
          (hsPkgs.lifted-base)
          (hsPkgs.data-default)
          (hsPkgs.base64-bytestring)
          (hsPkgs.temporary)
        ];
      };
    };
  }