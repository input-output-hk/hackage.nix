{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "arbb-vm"; version = "0.1.1.4"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }