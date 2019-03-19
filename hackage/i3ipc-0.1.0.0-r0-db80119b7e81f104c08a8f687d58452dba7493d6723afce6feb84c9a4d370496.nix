{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "i3ipc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Evan Cameron";
      maintainer = "cameron.evan@gmail.com";
      author = "Evan Cameron";
      homepage = "https://github.com/leshow/i3ipc#readme";
      url = "";
      synopsis = "A type-safe wrapper around i3's IPC";
      description = "Library for controlling i3 through it's IPC. i3 communicates using a JSON interface over a unix socket.\nFor JSON parsing I'm using Aeson. I've written out all the records and types to allow anyone to\neasily interact with i3 from a Haskell application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.network)
          (hsPkgs.typed-process)
          ];
        };
      tests = {
        "i3ipc-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.i3ipc)
            ];
          };
        };
      };
    }