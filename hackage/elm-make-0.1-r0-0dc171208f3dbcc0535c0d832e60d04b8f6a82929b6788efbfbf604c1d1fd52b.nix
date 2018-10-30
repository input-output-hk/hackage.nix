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
        name = "elm-make";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "A build tool for Elm projects";
      description = "A nice way to build projects that is aware of both elm-compile and\nelm-package, so it can make the build process very smooth.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elm-make" = {
          depends  = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.elm-compiler)
            (hsPkgs.elm-package)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
    };
  }