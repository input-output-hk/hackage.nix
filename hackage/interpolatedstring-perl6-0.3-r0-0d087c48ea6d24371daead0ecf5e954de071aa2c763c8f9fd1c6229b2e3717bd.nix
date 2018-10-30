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
      specVersion = "1.2";
      identifier = {
        name = "interpolatedstring-perl6";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "QuasiQuoter for Perl6-style multi-line interpolated strings with \"q\", \"qq\" and \"qc\" support.";
      description = "QuasiQuoter for Perl6-style multi-line interpolated strings with \"q\", \"qq\" and \"qc\" support.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
        ];
      };
    };
  }