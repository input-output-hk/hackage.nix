{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "spir-v";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "spir.of.the.moment@monoid.al";
        author = "Joe Hermaszewski";
        homepage = "https://github.com/expipiplus1/spir-v";
        url = "";
        synopsis = "Some utilities for reading and writing SPIR-V files";
        description = "This package exposes information scraped from the SPIR-V spec found\n<https://www.khronos.org/registry/spir-v/specs/1.0/SPIRV.html here>.\nThis is a very early version, it's not quite ready to be used.";
        buildType = "Simple";
      };
      components = {
        spir-v = {
          depends  = [ hsPkgs.base ];
        };
      };
    }