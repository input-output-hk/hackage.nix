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
        name = "staversion";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/staversion";
      url = "";
      synopsis = "What version is the package X in stackage lts-Y.ZZ?";
      description = "A command-line tool to look for version numbers for Haskell packages in specific stackage resolvers. See README.md";
      buildType = "Simple";
    };
    components = {
      "staversion" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.yaml)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.optparse-applicative)
        ];
      };
      exes = {
        "staversion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.staversion)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.staversion)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }