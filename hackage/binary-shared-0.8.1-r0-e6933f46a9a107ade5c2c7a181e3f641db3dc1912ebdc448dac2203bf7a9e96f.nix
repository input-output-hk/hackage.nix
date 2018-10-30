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
      specVersion = "0";
      identifier = {
        name = "binary-shared";
        version = "0.8.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Juergen Nicklisch-Franken (jutaro)";
      maintainer = "maintainer@leksah.org";
      author = "Juergen Nicklisch-Franken (jutaro)";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/binary-shared";
      synopsis = "Sharing for the binary package";
      description = "I had problems with the size of the allocated heap space after serializing\nand loading data with the binary package. The reason was that\nbinary does not support sharing of identical elements, so I came up\nwith the generic solution in this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }