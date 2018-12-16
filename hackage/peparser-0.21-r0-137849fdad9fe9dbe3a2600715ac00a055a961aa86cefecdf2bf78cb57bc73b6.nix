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
      specVersion = "1.6";
      identifier = {
        name = "peparser";
        version = "0.21";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thegravian@gmail.com";
      author = "Ian Graves";
      homepage = "https://github.com/igraves/peparser-haskell";
      url = "";
      synopsis = "A parser for PE object files.";
      description = "Extract the header information and sections from a file of the PE object format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
    };
  }