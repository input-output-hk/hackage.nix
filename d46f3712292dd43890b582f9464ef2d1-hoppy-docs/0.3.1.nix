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
        name = "hoppy-docs";
        version = "0.3.1";
      };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2015-2017 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/hoppy";
      url = "";
      synopsis = "C++ FFI generator - Documentation";
      description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package contains documentation linking to the other Hoppy packages.";
      buildType = "Simple";
    };
    components = {
      "hoppy-docs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src)
          (hsPkgs.hoppy-generator)
          (hsPkgs.hoppy-runtime)
        ];
      };
    };
  }