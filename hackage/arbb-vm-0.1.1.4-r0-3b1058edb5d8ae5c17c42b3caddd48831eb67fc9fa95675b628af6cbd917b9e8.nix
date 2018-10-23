{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "arbb-vm";
        version = "0.1.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2012 Intel Corporation";
      maintainer = "Joel Svensson<svenssonjoel@yahoo.se>";
      author = "Joel Svensson<svenssonjoel@yahoo.se>";
      homepage = "git://github.com/svenssonjoel/arbb-vm/wiki";
      url = "";
      synopsis = "FFI binding to the Intel Array Building Blocks (ArBB) virtual machine.";
      description = "Bindings to the \"arbb_vmapi\". Low level interface to the ArBB functionality.\nRequires Intel ArBB version 1.0.0.030 (download ArBB at software.intel.com)";
      buildType = "Simple";
    };
    components = {
      "arbb-vm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.pretty)
        ];
      };
    };
  }