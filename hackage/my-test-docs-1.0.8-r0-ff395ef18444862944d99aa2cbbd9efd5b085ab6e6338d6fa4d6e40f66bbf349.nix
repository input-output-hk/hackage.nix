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
        name = "my-test-docs";
        version = "1.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Man Koma";
      maintainer = "mmy009@gmail.com";
      author = "Man Koma";
      homepage = "http://github.com/";
      url = "";
      synopsis = "Nill";
      description = "<https://www.google.com>\n\n<https://www.google.com <http://i.imgur.com/uZnp9ke.png>>\n\n/Test/\n\n* {Test}\n\n* [TEST]\n\n* --TEST--\n\n* -TEST--\n\n* (TEST)\n\n* %TEST%\n\n* #TEST#\n\n* @TEST@\n\n* !TEST!\n\n* &TEST&\n\n* \"TEST\"\n\n* |TEST|\n\n* :TEST:";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.servant-docs)
          (hsPkgs.servant)
          (hsPkgs.servant-auth)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.servant-auth-docs)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.servant-docs)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.lens)
            (hsPkgs.servant-auth-docs)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }