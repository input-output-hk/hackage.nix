{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "heterocephalus";
        version = "1.0.2.0";
      };
      license = "MIT";
      copyright = "2016 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/heterocephalus#readme";
      url = "";
      synopsis = "A type-safe template engine for working with popular front end development tools";
      description = "Recent front end development tools and languages are growing fast and have\nquite a complicated ecosystem. Few front end developers want to be forced\nuse Shakespeare templates. Instead, they would rather use @node@ friendly\nengines such that @pug@, @slim@, and @haml@. However, in using these\ntemplate engines, we lose the compile-time variable interpolation and type\nchecking from Shakespeare.\n\nHeterocephalus is intended for use with another feature rich template\nengine and provides a way to interpolate server side variables into a\nprecompiled template file with @forall@ and @if@ statements.";
      buildType = "Simple";
    };
    components = {
      "heterocephalus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.containers)
          (hsPkgs.dlist)
          (hsPkgs.parsec)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
        ];
      };
      tests = {
        "heterocephalus-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.heterocephalus)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.doctest)
            (hsPkgs.heterocephalus)
          ];
        };
      };
    };
  }