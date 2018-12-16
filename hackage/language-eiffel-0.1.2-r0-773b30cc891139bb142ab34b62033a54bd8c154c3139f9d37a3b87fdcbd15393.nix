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
        name = "language-eiffel";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "scott.gregory.west@gmail.com";
      author = "Scott West";
      homepage = "https://github.com/scottgw/language-eiffel";
      url = "";
      synopsis = "Parser and pretty printer for the Eiffel language.";
      description = "This package provides a base to analyze and transform\nthe Eiffel language. It is suitable to build parsers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.derive)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.pretty)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
    };
  }