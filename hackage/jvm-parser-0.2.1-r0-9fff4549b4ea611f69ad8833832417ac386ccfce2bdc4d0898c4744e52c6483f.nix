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
        name = "jvm-parser";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Galois Inc.";
      maintainer = "atomb@galois.com";
      author = "Galois, Inc.";
      homepage = "";
      url = "";
      synopsis = "A parser for JVM bytecode files";
      description = "A parser for JVM bytecode (.class and .jar) files";
      buildType = "Simple";
    };
    components = {
      "jvm-parser" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.fgl)
          (hsPkgs.fingertree)
          (hsPkgs.zlib)
          (hsPkgs.pretty)
        ];
      };
    };
  }