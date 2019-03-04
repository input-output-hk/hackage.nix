{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "elm2nix"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Domen Kožar";
      maintainer = "domen@dev.si";
      author = "Domen Kožar";
      homepage = "https://github.com/domenkozar/elm2nix#readme";
      url = "";
      synopsis = "Turn your Elm project into buildable Nix project";
      description = "Please see the README on Github at <https://github.com/domenkozar/elm2nix#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.here)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.req)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "elm2nix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.elm2nix)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.here)
            (hsPkgs.ansi-wl-pprint)
            ];
          };
        };
      tests = {
        "elm2nix-test" = { depends = [ (hsPkgs.base) (hsPkgs.elm2nix) ]; };
        };
      };
    }