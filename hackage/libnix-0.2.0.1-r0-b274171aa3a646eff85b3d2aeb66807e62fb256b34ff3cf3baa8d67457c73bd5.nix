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
        name = "libnix";
        version = "0.2.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mail@profpatsch.de";
      author = "Profpatsch";
      homepage = "https://github.com/Profpatsch/libnix-haskell#readme";
      url = "";
      synopsis = "Bindings to the nix package manager";
      description = "Use the nix package manager from Haskell. All modules are designed to be imported qualified.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          depends = [
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