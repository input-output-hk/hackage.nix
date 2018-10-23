{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "interpolatedstring-qq-mwotton";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Erik Charlebois";
      maintainer = "Erik Charlebois <erikcharlebois@gmail.com> (-mwotton version very slightly changed by mwotton@gmail.com)";
      author = "Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "QuasiQuoter for Ruby-style multi-line interpolated strings.";
      description = "QuasiQuoter for Ruby-style multi-line interpolated strings.";
      buildType = "Custom";
    };
    components = {
      "interpolatedstring-qq-mwotton" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta-mwotton)
        ];
      };
    };
  }