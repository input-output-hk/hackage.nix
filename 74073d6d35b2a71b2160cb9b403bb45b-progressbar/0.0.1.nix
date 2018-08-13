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
      specVersion = "1.2";
      identifier = {
        name = "progressbar";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mad.one@gmail.com";
      author = "Austin Seipp";
      homepage = "";
      url = "";
      synopsis = "Progressbar API";
      description = "This package implements a progress bar\napi built on the io-reactive package.";
      buildType = "Simple";
    };
    components = {
      "progressbar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.io-reactive)
        ];
      };
      exes = {
        "test" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }