{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "qed"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2015";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/qed#readme";
      url = "";
      synopsis = "Simple prover";
      description = "A prototype proof system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.deepseq)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.uniplate)
          (hsPkgs.extra)
          (hsPkgs.haskell-src-exts)
          ];
        };
      tests = {
        "qed-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.qed) (hsPkgs.transformers) ];
          };
        };
      };
    }