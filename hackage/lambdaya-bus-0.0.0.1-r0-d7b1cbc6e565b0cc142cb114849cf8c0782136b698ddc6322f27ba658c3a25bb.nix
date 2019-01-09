{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lambdaya-bus"; version = "0.0.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "luka.rahne@gmail.com";
      author = "Luka Rahne";
      homepage = "";
      url = "";
      synopsis = "Fpga bus core and serialization for RedPitaya";
      description = "Bus library for RedPitaya that enables data serialization\nbetween Fpga core and client running either on arm or remotely over network.\nType signature of Fpga core is used to define interface signature for client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.clash-prelude)
          (hsPkgs.Lambdaya)
          (hsPkgs.template-haskell)
          ];
        };
      };
    }