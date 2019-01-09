{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snappy-conduit"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015, Toru Tomita";
      maintainer = "toru.tomita@gmail.com";
      author = "Toru Tomita";
      homepage = "http://github.com/tatac1/snappy-conduit/";
      url = "";
      synopsis = "Conduit bindings for Snappy (see snappy package)";
      description = "Conduit bindings for Snappy (see snappy package)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.snappy)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          ];
        };
      };
    }