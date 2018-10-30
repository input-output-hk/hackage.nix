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
      specVersion = "1.10";
      identifier = {
        name = "hR";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "R bindings and interface";
      description = "This package aims to provide a comprehensive interface to the R libraries and native data structures.  It is currently quite light on documentation but fairly complete in terms of functionality.  It requires libR.so, which is an optional component of R.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }