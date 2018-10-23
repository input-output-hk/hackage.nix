{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "simple-tar";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Galois, Inc";
      maintainer = "Adam Wick <awick@galois.com>";
      author = "Adam Wick <awick@galois.com>";
      homepage = "";
      url = "";
      synopsis = "Simple, pure, file-system-free reading of tar files";
      description = "This library is for reading \\\"@.tar@\\\" files found from\nsome other source, and providing a mechanism for accessing\ntheir files. It specifically supports the USTAR tar format;\nother formats may come in the future by request.";
      buildType = "Simple";
    };
    components = {
      "simple-tar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.time)
        ];
      };
    };
  }