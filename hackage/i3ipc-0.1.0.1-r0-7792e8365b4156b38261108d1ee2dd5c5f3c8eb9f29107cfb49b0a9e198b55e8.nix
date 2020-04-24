{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "i3ipc"; version = "0.1.0.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
          ];
        buildable = true;
        };
      tests = {
        "i3ipc-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."i3ipc" or ((hsPkgs.pkgs-errors).buildDepError "i3ipc"))
            ];
          buildable = true;
          };
        };
      };
    }