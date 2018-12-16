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
        name = "inline-java";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "alp.mestanogullari@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java#readme";
      url = "";
      synopsis = "Java interop via inline Java code in Haskell modules.";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.distributed-closure)
          (hsPkgs.inline-c)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.thread-local-storage)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."jvm") ];
      };
    };
  }