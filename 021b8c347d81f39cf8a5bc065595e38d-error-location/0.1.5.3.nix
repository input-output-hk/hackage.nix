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
      specVersion = "1.6";
      identifier = {
        name = "error-location";
        version = "0.1.5.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greg@gregweber.info";
      author = "Greg Weber";
      homepage = "https://github.com/gregwebs/ErrorLocation.hs";
      url = "";
      synopsis = "error functions that show file location information";
      description = "Deprecated- now called file-location\nhttp://hackage.haskell.org/package/file-location";
      buildType = "Simple";
    };
    components = {
      "error-location" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }