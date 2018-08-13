{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "template-toolkit";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "kobargh@gmail.com";
      author = "Dzianis Kabanau";
      homepage = "https://github.com/kobargh/template-toolkit";
      url = "";
      synopsis = "Template Toolkit implementation for Haskell";
      description = "Template Toolkit is a template processing system originally written in Perl by Andy Wardley.\nThis haskell implementation includes such features as:\nscalar, array, hash variables, variable interpolation,\nconditional directives,\nloops and loop controls,\nexternal templates and internal blocks processing,\nlots of virtual methods and filters.";
      buildType = "Simple";
    };
    components = {
      "template-toolkit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.pcre-utils)
          (hsPkgs.uri-encode)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
        ];
      };
    };
  }