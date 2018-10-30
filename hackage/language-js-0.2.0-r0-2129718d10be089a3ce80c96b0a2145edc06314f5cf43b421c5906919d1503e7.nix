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
        name = "language-js";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Bruno Dias";
      maintainer = "Bruno Dias <dias.h.bruno@gmail.com>";
      author = "Bruno Dias <dias.h.bruno@gmail.com>";
      homepage = "https://github.com/diasbruno/language-js#readme";
      url = "";
      synopsis = "javascript parser for es6 and es7.";
      description = "Please see the README on Github at <https://github.com/diasbruno/language-js#README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "language-js-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.language-js)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }