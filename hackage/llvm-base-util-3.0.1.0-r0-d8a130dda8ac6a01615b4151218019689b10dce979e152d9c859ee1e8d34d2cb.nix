{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "llvm-base-util";
        version = "3.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul Meng (mno2@mno2.org)";
      author = "Bryan O'Sullivan, Lennart Augustsson";
      homepage = "https://github.com/bos/llvm";
      url = "";
      synopsis = "Utilities for bindings to the LLVM compiler toolkit.";
      description = "* Exposing the LLVM.Core.Util from llvm to make llvm-base much easier to use. It's for people where llvm high level interface is not suitable but llvm-base is too low level to use";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.llvm-base)
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."vecLib");
      };
    };
  }