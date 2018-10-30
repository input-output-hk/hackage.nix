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
      specVersion = "1.10";
      identifier = {
        name = "libzfs";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "libzfs.hs@mcohrs.eu";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "Bindings to libzfs, for dealing with the Z File System and Zpools.";
      description = "These are just some bindings to the real libzfs, written in C. Note that libzfs is licensed under the CDDL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
        libs = [
          (pkgs."zfs")
          (pkgs."nvpair")
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
          libs = [
            (pkgs."zfs")
            (pkgs."nvpair")
          ];
        };
      };
    };
  }