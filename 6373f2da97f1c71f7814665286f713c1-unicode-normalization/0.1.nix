{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "unicode-normalization";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "reinier.lamers@phil.uu.nl";
      author = "Reinier Lamers";
      homepage = "http://sloompie.reinier.de/unicode-normalization/";
      url = "";
      synopsis = "Unicode normalization using the ICU library";
      description = "Unicode normalization using the ICU library";
      buildType = "Custom";
    };
    components = {
      "unicode-normalization" = {
        depends  = if _flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.compact-string)
            (hsPkgs.bytestring)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.compact-string)
          ];
        libs = [ (pkgs.icuuc) ];
      };
    };
  }