{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "trasa-extra"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Zachary Churchill <zacharyachurchill@gmail.com>";
      author = "goolord";
      homepage = "https://github.com/goolord/trasa-extra";
      url = "";
      synopsis = "Extra functions for trasa";
      description = "Boilerplate code for use with the trasa web framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.case-insensitive)
          (hsPkgs.cookie)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.path-pieces)
          (hsPkgs.quantification)
          (hsPkgs.trasa)
          (hsPkgs.trasa-server)
          ];
        };
      };
    }