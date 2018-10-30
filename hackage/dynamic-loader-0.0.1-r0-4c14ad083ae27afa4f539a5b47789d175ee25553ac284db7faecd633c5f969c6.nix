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
      specVersion = "1.6";
      identifier = {
        name = "dynamic-loader";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2003-2004, Hampus Ram;\n(c) 2012-2016, Gabor Greif";
      maintainer = "Gabor Greif <ggreif+dynamic@gmail.com>";
      author = "Hampus Ram";
      homepage = "https://github.com/ggreif/dynamic-loader";
      url = "";
      synopsis = "lightweight loader of GHC-based modules or packages";
      description = "This package allows the linking against GHC-compiled\nobject files and shared libraries. Specialized modules\nare provided for navigating directory structure and\ndependency checking.\n\nNo attempt at type-safe loading of symbols is made.\n\nRelease history:\n\n[0.0] Initial version (testing Hackage build)\n[0.0.1] Added support for archives.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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