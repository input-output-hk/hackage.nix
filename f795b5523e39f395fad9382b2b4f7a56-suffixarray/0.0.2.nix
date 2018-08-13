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
        name = "suffixarray";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2010 Daniël de Kok";
      maintainer = "Daniël de Kok <me@danieldk.eu>";
      author = "Daniël de Kok <me@danieldk.eu>";
      homepage = "http://github.com/danieldk/tinker-hs";
      url = "";
      synopsis = "Suffix arrays";
      description = "Suffix arrays";
      buildType = "Simple";
    };
    components = {
      "suffixarray" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
    };
  }