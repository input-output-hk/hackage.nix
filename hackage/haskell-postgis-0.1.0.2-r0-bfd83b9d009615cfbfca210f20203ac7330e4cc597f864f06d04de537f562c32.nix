{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-postgis"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "pfrance@gmail.com";
      author = "Peter";
      homepage = "";
      url = "";
      synopsis = "A haskell library for PostGIS geometry types.";
      description = "A collection of types and parsers to use with the PostGIS extesion to PostgreSQL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.binary)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.cpu)
          (hsPkgs.mtl)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.placeholders)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.haskell-postgis)
            (hsPkgs.vector)
            (hsPkgs.binary)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.cpu)
            (hsPkgs.mtl)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.placeholders)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }