{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mustache";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dev@justus.science";
      author = "Justus Adam";
      homepage = "";
      url = "";
      synopsis = "A mustache template parser library.";
      description = "Allows parsing and rendering template files with mustache markup. See the\nmustache <http://mustache.github.io/mustache.5.html language reference>.\nImplements the mustache spec version 1.1.3";
      buildType = "Simple";
    };
    components = {
      "mustache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.either)
          (hsPkgs.aeson)
          (hsPkgs.uniplate)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.tagsoup)
          (hsPkgs.bytestring)
          (hsPkgs.hspec)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.scientific)
          (hsPkgs.conversion)
          (hsPkgs.conversion-text)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.ja-base-extra)
        ];
      };
      exes = {
        "haskell-mustache" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mustache)
            (hsPkgs.bytestring)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.cmdargs)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.base-unicode-symbols)
          ];
        };
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.mustache)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.base-unicode-symbols)
          ];
        };
      };
    };
  }