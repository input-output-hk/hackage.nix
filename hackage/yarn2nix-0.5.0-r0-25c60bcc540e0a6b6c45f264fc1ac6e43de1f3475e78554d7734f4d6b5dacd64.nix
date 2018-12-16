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
        name = "yarn2nix";
        version = "0.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mail@profpatsch.de";
      author = "Profpatsch";
      homepage = "https://github.com/Profpatsch/yarn2nix#readme";
      url = "";
      synopsis = "Convert yarn.lock files to nix expressions";
      description = "Convert @yarn.lock@ files to nix expressions. See @yarn2nix@ executable. Contains a nix library to call the generated nix files in @nix-lib/@. Library functions and module names might be restructured in the future.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.async-pool)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-fix)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.filepath)
          (hsPkgs.hnix)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.protolude)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yarn-lock)
        ];
      };
      exes = {
        "setup-node-package-paths" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.async-pool)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-fix)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.filepath)
            (hsPkgs.hnix)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.yarn-lock)
            (hsPkgs.optparse-applicative)
            (hsPkgs.unix)
            (hsPkgs.yarn2nix)
          ];
        };
        "yarn2nix" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.async-pool)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-fix)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.filepath)
            (hsPkgs.hnix)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.yarn-lock)
            (hsPkgs.yarn2nix)
          ];
        };
      };
      tests = {
        "yarn2nix-tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.async-pool)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-fix)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.filepath)
            (hsPkgs.hnix)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.yarn-lock)
            (hsPkgs.neat-interpolation)
            (hsPkgs.protolude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.yarn2nix)
          ];
        };
      };
    };
  }