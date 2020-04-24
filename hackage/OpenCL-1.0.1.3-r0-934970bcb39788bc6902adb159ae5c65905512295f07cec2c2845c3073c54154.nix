{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "OpenCL"; version = "1.0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2011 Luis Cabellos";
      maintainer = "Luis Cabellos";
      author = "Luis Cabellos";
      homepage = "https://github.com/zhensydow/opencl";
      url = "";
      synopsis = "Haskell high-level wrapper for OpenCL";
      description = "Haskell FFI binding to OpenCL library. It includes high-level wrappers to help development. Based on OpenCLRaw package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }