{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-websockets"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016, Noon van der Silk";
      maintainer = "noonsilk@gmail.com";
      author = "Noon van der Silk";
      homepage = "https://github.com/silky/pipes-websockets#readme";
      url = "";
      synopsis = "WebSockets in the Pipes framework.";
      description = "This library provides Producers and Consumers of data\nto/from WebSocket connections.\n\nExample usage can be found in \"Pipes.WebSockets.Examples\". The executable\nproduced by this package simple runs one of the examples.\n\nImport \"Pipes.WebSockets\" to use the library.\n\nSee @CHANGELOG.md@ for changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or ((hsPkgs.pkgs-errors).buildDepError "pipes-concurrency"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "pipes-websockets-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pipes-websockets" or ((hsPkgs.pkgs-errors).buildDepError "pipes-websockets"))
            ];
          buildable = true;
          };
        };
      };
    }