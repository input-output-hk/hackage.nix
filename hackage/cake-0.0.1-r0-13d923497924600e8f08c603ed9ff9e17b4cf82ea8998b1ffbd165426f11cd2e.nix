{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cake";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "A build-system library";
      description = "Soon to appear.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.groom)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.Encode)
          (hsPkgs.bytestring)
          (hsPkgs.pureMD5)
        ];
      };
    };
  }