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
        name = "htvm";
        version = "0.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "grrwlf@gmail.com";
      author = "Sergey Mironov";
      homepage = "https://github.com/grwlf/htvm";
      url = "";
      synopsis = "TVM bindings.";
      description = "This library provides interface to TVM Runtime, and experimental\nEDSL for building models with TVM.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.Earley)
          (hsPkgs.pretty-show)
          (hsPkgs.recursion-schemes)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.deriving-compat)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.pretty-show)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.temporary)
        ];
        libs = [
          (pkgs."tvm_runtime")
          (pkgs."dl")
          (pkgs."pthread")
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.recursion-schemes)
            (hsPkgs.htvm)
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.temporary)
            (hsPkgs.text)
          ];
          libs = [
            (pkgs."tvm_runtime")
            (pkgs."dl")
            (pkgs."pthread")
          ];
        };
      };
    };
  }