{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jni"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "https://github.com/tweag/inline-java/tree/master/jni#readme";
      url = "";
      synopsis = "Complete JNI raw bindings.";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.choice)
          (hsPkgs.containers)
          (hsPkgs.constraints)
          (hsPkgs.deepseq)
          (hsPkgs.singletons)
          ] ++ [ (hsPkgs.inline-c) ];
        libs = [ (pkgs."jvm") ];
        build-tools = [ ((hsPkgs.buildPackages).cpphs) ];
        };
      };
    }