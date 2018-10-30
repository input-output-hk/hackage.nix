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
        name = "bindings-libg15";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 Xandaros";
      maintainer = "mz-bremerhaven@gmail.com";
      author = "Xandaros";
      homepage = "https://github.com/Xandaros/bindings-libg15#readme";
      url = "";
      synopsis = "Bindings to libg15";
      description = "This library provides bindings to the libg15 library. Note that the trunk version from SVN is required to build this";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs."g15") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }