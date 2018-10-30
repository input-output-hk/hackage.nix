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
        version = "0.3.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "A build-system library and driver";
      description = "Soon to appear.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.derive)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.pureMD5)
          (hsPkgs.split)
        ];
      };
      exes = {
        "cake" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.cmdargs)
            (hsPkgs.regex-tdfa)
            (hsPkgs.array)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }