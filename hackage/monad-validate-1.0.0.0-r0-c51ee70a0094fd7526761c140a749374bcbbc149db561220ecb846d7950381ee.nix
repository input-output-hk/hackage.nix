{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "monad-validate"; version = "1.0.0.0"; };
      license = "ISC";
      copyright = "2019 Hasura";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "Alexis King <lexi.lambda@gmail.com>";
      homepage = "https://github.com/hasura/monad-validate#readme";
      url = "";
      synopsis = "A monad transformer for data validation.";
      description = "Provides the 'ValidateT' monad transformer, designed for writing data validations that provide\nhigh-quality error reporting without much effort. 'ValidateT' automatically exploits the data\ndependencies of your program—as encoded implicitly in uses of 'fmap', '<*>', and '>>='—to report\nas many errors as possible upon failure instead of completely aborting at the first one. See\n\"Control.Monad.Validate\" for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          ];
        };
      tests = {
        "monad-validate-test-suite" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.monad-control)
            (hsPkgs.monad-validate)
            (hsPkgs.mtl)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }