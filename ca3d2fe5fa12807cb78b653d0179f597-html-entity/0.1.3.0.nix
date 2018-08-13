{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      tablegen = false;
      werror = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "html-entity";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@jude.xyz";
      author = "Jude Taylor";
      homepage = "";
      url = "";
      synopsis = "HTML entity decoding and encoding for Text";
      description = "Fast, attoparsec-powered HTML entity decoding and encoding for Text";
      buildType = "Custom";
    };
    components = {
      "html-entity" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "tablegen" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }