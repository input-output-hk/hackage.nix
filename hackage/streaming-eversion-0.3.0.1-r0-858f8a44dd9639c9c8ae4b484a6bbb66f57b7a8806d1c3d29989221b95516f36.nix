{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "streaming-eversion"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Daniel Diaz";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Translate pull-based stream folds into push-based iteratees.";
      description = "Translate pull-based folds from the \"streaming\" package into\npush-based folds from the \"foldl\" package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.foldl)
          (hsPkgs.pipes)
          (hsPkgs.streaming)
          ];
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.foldl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-text)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.streaming)
            (hsPkgs.microlens)
            ];
          };
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.streaming)
            (hsPkgs.foldl)
            (hsPkgs.streaming-eversion)
            ];
          };
        };
      };
    }