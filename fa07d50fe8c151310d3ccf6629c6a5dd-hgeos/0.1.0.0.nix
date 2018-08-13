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
        name = "hgeos";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/hgeos#readme";
      url = "";
      synopsis = "Haskell bindings to GEOS C API";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hgeos" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."geos_c") ];
      };
      exes = {
        "hgeos" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hgeos)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }