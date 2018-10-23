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
        name = "componentm";
        version = "0.0.0.2";
      };
      license = "MIT";
      copyright = "© 2017-current Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-componentm#readme";
      url = "";
      synopsis = "Monad for allocation and cleanup of application resources";
      description = "This library allows you to allocate resources with\nclean up strategies when initializing your application.\nIt then provides a Monadic interface to compose multiple\nresources without having to deal with cleanup operations\nexplicitely.";
      buildType = "Simple";
    };
    components = {
      "componentm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.pretty-show)
          (hsPkgs.prettyprinter)
          (hsPkgs.rio)
          (hsPkgs.teardown)
        ];
      };
      tests = {
        "componentm-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.componentm)
            (hsPkgs.containers)
            (hsPkgs.pretty-show)
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