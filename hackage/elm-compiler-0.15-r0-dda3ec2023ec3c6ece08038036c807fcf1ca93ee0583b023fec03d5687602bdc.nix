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
      specVersion = "1.9";
      identifier = {
        name = "elm-compiler";
        version = "0.15";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2014 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "Values to help with elm-package, elm-make, and elm-lang.org.";
      description = "Elm aims to make client-side web-development pleasant. It is a\nstatically/strongly typed, functional reactive language that compiles to\nHTML, CSS, and JS. This package provides a couple helpful values that are\nintended for use in packages such as elm-package and elm-make.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.edit-distance)
          (hsPkgs.filepath)
          (hsPkgs.indents)
          (hsPkgs.language-ecmascript)
          (hsPkgs.language-glsl)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.union-find)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "elm-doc" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.indents)
            (hsPkgs.language-glsl)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.union-find)
          ];
        };
        "elm" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.indents)
            (hsPkgs.language-glsl)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.union-find)
          ];
        };
      };
      tests = {
        "compiler-tests" = {
          depends  = [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.edit-distance)
            (hsPkgs.elm-compiler)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.indents)
            (hsPkgs.language-ecmascript)
            (hsPkgs.language-glsl)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.union-find)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }