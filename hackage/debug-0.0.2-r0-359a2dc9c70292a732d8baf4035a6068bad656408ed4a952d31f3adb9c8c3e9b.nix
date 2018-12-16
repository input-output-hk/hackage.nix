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
      specVersion = "1.18";
      identifier = {
        name = "debug";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2017";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/debug";
      url = "";
      synopsis = "Simple trace-based debugger";
      description = "An easy to use debugger for viewing function calls and intermediate variables.\nTo use, annotate the function under test, run the code, and view the generated web page.\nFull usage instructions are at \"Debug\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.extra)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.template-haskell)
          (hsPkgs.open-browser)
          (hsPkgs.uniplate)
          (hsPkgs.js-jquery)
          (hsPkgs.ansi-wl-pprint)
        ];
      };
      tests = {
        "debug-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.extra)
            (hsPkgs.debug)
          ];
        };
      };
    };
  }