{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "setlocale";
        version = "1.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2014, Sven Bartscher";
      maintainer = "sven.bartscher@weltraumschlangen.de";
      author = "Sven Bartscher";
      homepage = "https://bitbucket.org/IchUndNichtDu/haskell-setlocale";
      url = "";
      synopsis = "Haskell bindings to setlocale";
      description = "";
      buildType = "Simple";
    };
    components = {
      "setlocale" = {
        depends  = [ (hsPkgs.base) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }