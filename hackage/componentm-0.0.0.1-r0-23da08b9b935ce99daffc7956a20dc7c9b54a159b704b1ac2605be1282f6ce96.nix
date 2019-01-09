{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "componentm"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "© 2017-2018 Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-componentm#readme";
      url = "";
      synopsis = "Monad for allocation and cleanup of application resources";
      description = "This library allows you to allocate resources with\nclean up strategies when initializing your application.\nIt then provides a Monadic interface to compose multiple\nresources without having to deal with cleanup operations\nexplicitely.\n\nCheck Control.Monad.Component.Tutorial for an example and\nmore information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.prettyprinter)
          (hsPkgs.rio)
          (hsPkgs.teardown)
          ];
        };
      tests = {
        "componentm-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.componentm)
            (hsPkgs.containers)
            (hsPkgs.prettyprinter)
            (hsPkgs.rio)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.teardown)
            ];
          };
        };
      };
    }