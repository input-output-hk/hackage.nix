{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "godot-haskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 David Kraeutmann";
      maintainer = "kane@kane.cx";
      author = "David Kraeutmann";
      homepage = "https://github.com/KaneTW/godot-haskell#readme";
      url = "";
      synopsis = "Haskell bindings for the Godot game engine API";
      description = "This package contains Haskell bindings for GDNative and the Godot API. For details and examples, see README.md\nThis is intended to be used with Godot master 91e5782.\nVersioning scheme subject to change as I figure out a good way to maintain a link to the Godot versioning.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.casing)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.generate)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      sublibs = {
        "generate" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.casing)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.parsers)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }