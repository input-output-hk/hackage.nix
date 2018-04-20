{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "itanium-abi";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "travitch@cs.wisc.edu";
        author = "Tristan Ravitch";
        homepage = "";
        url = "";
        synopsis = "An implementation of name mangling/demangling for the Itanium ABI";
        description = "Currently supports everything in the standard but templates\nand C++11.  Support for these will be added.  Includes a name\nmangler, demangler, and pretty printer.";
        buildType = "Simple";
      };
      components = {
        itanium-abi = {
          depends  = [
            hsPkgs.base
            hsPkgs.boomerang
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          DemangleTests = {
            depends  = [
              hsPkgs.itanium-abi
              hsPkgs.base
              hsPkgs.process
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }