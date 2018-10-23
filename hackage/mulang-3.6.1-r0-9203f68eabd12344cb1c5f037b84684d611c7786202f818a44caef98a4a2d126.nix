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
        name = "mulang";
        version = "3.6.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "franco@mumuki.org";
      author = "Franco Leonardo Bulgarelli";
      homepage = "";
      url = "";
      synopsis = "An intermediate language designed to perform advanced code analysis";
      description = "Mulang is an intermediate language, a combinators library for static code analysis and a multilanguage comand line tool";
      buildType = "Simple";
    };
    components = {
      "mulang" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.haskell-src)
          (hsPkgs.language-java)
          (hsPkgs.language-javascript)
          (hsPkgs.aeson)
          (hsPkgs.inflections)
          (hsPkgs.parsec)
          (hsPkgs.ParsecTools)
          (hsPkgs.split)
          (hsPkgs.hashable)
          (hsPkgs.process)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "mulang" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.process)
            (hsPkgs.neat-interpolation)
            (hsPkgs.mulang)
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy)
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.neat-interpolation)
            (hsPkgs.mulang)
          ];
          build-tools = [
            (hsPkgs.buildPackages.happy)
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
    };
  }