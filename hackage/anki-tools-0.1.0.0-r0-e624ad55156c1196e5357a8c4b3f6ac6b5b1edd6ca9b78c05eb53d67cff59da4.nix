{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "anki-tools";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zohl@fmap.me";
      author = "Al Zohali";
      homepage = "";
      url = "";
      synopsis = "Tools for interacting with Anki database";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.sqlite-simple)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "anki-tools-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.anki-tools)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }