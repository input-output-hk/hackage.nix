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
        name = "orchid";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Haskell Wiki Library";
      description = "Haskell Wiki Library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.salvia)
          (hsPkgs.xml)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.containers)
          (hsPkgs.QuickCheck)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.process)
          (hsPkgs.unix)
          (hsPkgs.nano-md5)
          (hsPkgs.filestore)
          (hsPkgs.hscolour)
          (hsPkgs.encoding)
          (hsPkgs.utf8-string)
          (hsPkgs.directory)
        ];
      };
    };
  }