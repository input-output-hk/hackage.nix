{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { link = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "OpenCLWrappers"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Renaissance Computing Institute, Emil Karlson";
      maintainer = "Emil Karlson <jekarlson@gmail.com>";
      author = "J.R. Heard, Emil Karlson";
      homepage = "https://github.com/jkarlson/OpenCLWrappers";
      url = "";
      synopsis = "The OpenCL Standard for heterogenous data-parallel computing";
      description = "Light opencl wrappers, a fork of the OpenCLRaw package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.mtl) ];
        libs = (pkgs.lib).optional (flags.link) (pkgs."OpenCL");
        };
      };
    }