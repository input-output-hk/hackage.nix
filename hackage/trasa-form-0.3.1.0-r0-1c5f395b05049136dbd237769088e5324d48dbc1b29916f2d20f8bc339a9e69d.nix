{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "trasa-form"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "";
      url = "";
      synopsis = "generate forms using lucid, ditto and trasa";
      description = "Formlets library for trasa using ditto as its backend.\nAlthough trasa already has machinery for creating\ntypesafe forms, this library with ditto allow a more\ncomposable approach to form generation/validation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-api-data)
          (hsPkgs.cookie)
          (hsPkgs.http-types)
          (hsPkgs.lucid)
          (hsPkgs.mtl)
          (hsPkgs.quantification)
          (hsPkgs.ditto)
          (hsPkgs.ditto-lucid)
          (hsPkgs.text)
          (hsPkgs.trasa)
          (hsPkgs.trasa-server)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          ];
        };
      };
    }