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
        name = "libnix";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mail@profpatsch.de";
      author = "Profpatsch";
      homepage = "";
      url = "";
      synopsis = "Bindings to the nix package manager";
      description = "";
      buildType = "Simple";
    };
    components = {
      "libnix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.protolude)
          (hsPkgs.process)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.text)
            (hsPkgs.libnix)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }