{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "scan-metadata"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alexey.raga@gmail.com";
      author = "alexeyraga";
      homepage = "";
      url = "";
      synopsis = "Metadata types for Albedo Scanners";
      description = "Metadata types for Albedo Scanners.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.antiope-core)
          (hsPkgs.antiope-s3)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.generic-lens)
          (hsPkgs.hw-aeson)
          (hsPkgs.hw-ip)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.thyme)
          (hsPkgs.unliftio-core)
          ];
        };
      };
    }