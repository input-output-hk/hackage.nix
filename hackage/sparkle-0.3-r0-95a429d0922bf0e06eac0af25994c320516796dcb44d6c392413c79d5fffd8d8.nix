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
        name = "sparkle";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 EURL Tweag";
      maintainer = "alp.mestanogullari@tweag.io";
      author = "Tweag I/O";
      homepage = "";
      url = "";
      synopsis = "Distributed Apache Spark applications in Haskell";
      description = "See README.md";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.distributed-closure)
          (hsPkgs.jni)
          (hsPkgs.jvm)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "sparkle" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.sparkle)
            (hsPkgs.text)
            (hsPkgs.zip-archive)
          ];
        };
      };
    };
  }