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
      specVersion = "1.6";
      identifier = {
        name = "formlets-hsp";
        version = "2.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Jeremy Yallop / Tupil, Jeremy Shaw";
      maintainer = "Jeremy Shaw <jeremy@seereason.com>";
      author = "Jeremy Yallop, Chris Eidhof, Jeremy Shaw, David Fox";
      homepage = "";
      url = "";
      synopsis = "HSP support for Formlets";
      description = "A modular way to build forms based on applicative functors, as\ndescribed in:\n\n* Ezra Cooper, Samuel Lindley, Philip Wadler and Jeremy Yallop\n\\\"An idiom's guide to formlets\\\"\nTechnical Report, EDI-INF-RR-1263.\n<http://groups.inf.ed.ac.uk/links/formlets/>\n\nThis library extends formlets with support for HSP";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.formlets)
          (hsPkgs.hsx)
          (hsPkgs.hsp)
          (hsPkgs.mtl)
          (hsPkgs.applicative-extras)
        ];
      };
    };
  }