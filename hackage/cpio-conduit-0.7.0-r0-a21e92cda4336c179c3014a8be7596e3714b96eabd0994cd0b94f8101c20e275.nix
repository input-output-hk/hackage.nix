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
        name = "cpio-conduit";
        version = "0.7.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alonid@gmail.com";
      author = "Dan Aloni";
      homepage = "http://github.com/da-x/cpio-conduit";
      url = "";
      synopsis = "Conduit-based CPIO";
      description = "This is a native Haskell implementation of the CPIO protocol over the Conduit library. See <http://www.gnu.org/software/cpio/>.\nOnly the commonly used CPIO formats are supported (crc and newc).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
        ];
      };
      tests = {
        "cpio-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.cpio-conduit)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }