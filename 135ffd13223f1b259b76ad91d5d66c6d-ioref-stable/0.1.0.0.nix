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
        name = "ioref-stable";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2015";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "http://github.com/cocreature/ioref-stable#readme";
      url = "";
      synopsis = "iorefs with a unique stable index";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "ioref-stable" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }