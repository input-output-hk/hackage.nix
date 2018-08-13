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
        name = "dynamic-loader";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2004, Hampus Ram\nCopyright (c) 2012-2013, Gabor Greif";
      maintainer = "Gabor Greif <ggreif+dynamic@gmail.com>";
      author = "Hampus Ram";
      homepage = "https://github.com/ggreif/dynamic-loader";
      url = "";
      synopsis = "lightweight loader of GHC-based modules or packages";
      description = "This package allows the linking against GHC-compiled\nobject files and shared libraries. Specialized modules\nare provided for navigating directory structure and\ndependency checking.\n\nNo attempt at type-safe loading of symbols is made.";
      buildType = "Simple";
    };
    components = {
      "dynamic-loader" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.transformers)
        ];
      };
    };
  }