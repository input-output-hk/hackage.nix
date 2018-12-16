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
      specVersion = "1.4";
      identifier = {
        name = "embroidery";
        version = "0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ludflu@gmail.com";
      author = "Jim Snavely";
      homepage = "https://ludflu@github.com/ludflu/embroidery.git";
      url = "";
      synopsis = "support for embroidery formats in haskell";
      description = "This package allows you to read and view PES embroidery files used in commercial machine embroidery. Writing new files is currently not supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.haskell98)
          (hsPkgs.gloss)
          (hsPkgs.dlist)
          (hsPkgs.HCodecs)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "example" = {
          depends = [ (hsPkgs.base) ];
        };
      };
    };
  }