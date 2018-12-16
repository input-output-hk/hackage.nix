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
        name = "template-toolkit";
        version = "0.1.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018 Dzianis Kabanau";
      maintainer = "kobargh@gmail.com";
      author = "Dzianis Kabanau";
      homepage = "https://github.com/kobargh/template-toolkit#readme";
      url = "";
      synopsis = "Template Toolkit implementation for Haskell";
      description = "Template Toolkit is a template processing system originally written in Perl by Andy Wardley.\nThis haskell implementation includes such features as:\nscalar, array, hash variables, variable interpolation,\nconditional directives,\nloops and loop controls,\nexternal templates and internal blocks processing,\nmany virtual methods and filters,\ntemplates caching.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.hashtables)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pcre-utils)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-encode)
        ];
      };
    };
  }