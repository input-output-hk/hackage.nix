{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testprog = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "shake";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/shake/";
      url = "";
      synopsis = "Build system creator";
      description = "Write build systems, mostly works but seriously early adopters only.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.parallel-io)
          (hsPkgs.transformers)
        ];
      };
      exes = { "shake" = {}; };
    };
  }