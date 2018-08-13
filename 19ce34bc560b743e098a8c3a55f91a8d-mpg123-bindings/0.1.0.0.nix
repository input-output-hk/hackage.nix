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
        name = "mpg123-bindings";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Miroslav Puda";
      maintainer = "pakanek@gmail.com";
      author = "Miroslav Puda";
      homepage = "https://github.com/pakanek/mpg123-haskell-binding";
      url = "";
      synopsis = "Mpg132 bindings";
      description = "Raw bindings to libmpg123.";
      buildType = "Simple";
    };
    components = {
      "mpg123-bindings" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."mpg123") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }