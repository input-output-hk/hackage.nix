{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sparkle"; version = "0.7.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2017 EURL Tweag";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/sparkle#readme";
      url = "";
      synopsis = "Distributed Apache Spark applications in Haskell";
      description = "See https://www.stackage.org/package/sparkle.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.choice)
          (hsPkgs.constraints)
          (hsPkgs.distributed-closure)
          (hsPkgs.inline-java)
          (hsPkgs.jni)
          (hsPkgs.jvm)
          (hsPkgs.jvm-streaming)
          (hsPkgs.singletons)
          (hsPkgs.streaming)
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
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.zip-archive)
            ];
          };
        };
      };
    }