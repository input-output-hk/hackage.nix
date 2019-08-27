let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      system-lua = false;
      apicheck = false;
      lua_32bits = false;
      allow-unsafe-gc = true;
      luajit = false;
      lua501 = false;
      lua502 = false;
      use-pkgconfig = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "hslua"; version = "0.9.1"; };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak\n© 2012–2016 Ömer Sinan Ağacan\n© 2016–2017 Albert Krewinkel";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "A Lua language interpreter embedding in Haskell";
      description = "The Foreign.Lua module is a wrapper of Lua language\ninterpreter as described on\n<https://www.lua.org/ lua.org>.\n\nThis package contains a full Lua interpreter version\n5.3.4. If you want to link it with a system-wide Lua\ninstallation, use the @system-lua@ flag.\n\n<https://github.com/hslua/hslua-examples Example programs>\nare available in a separate repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."fail" or (buildDepError "fail"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        libs = (pkgs.lib).optionals (flags.system-lua || flags.luajit || flags.lua501 || flags.lua502) (if flags.luajit
          then (pkgs.lib).optional (!flags.use-pkgconfig) (pkgs."luajit-5.1" or (sysDepError "luajit-5.1"))
          else (pkgs.lib).optional (!flags.use-pkgconfig) (pkgs."lua" or (sysDepError "lua")));
        pkgconfig = (pkgs.lib).optionals (flags.system-lua || flags.luajit || flags.lua501 || flags.lua502) (if flags.luajit
          then (pkgs.lib).optional (flags.use-pkgconfig) (pkgconfPkgs."luajit" or (pkgConfDepError "luajit"))
          else (pkgs.lib).optionals (flags.use-pkgconfig) (if flags.lua501
            then [ (pkgconfPkgs."lua5.1" or (pkgConfDepError "lua5.1")) ]
            else if flags.lua502
              then [ (pkgconfPkgs."lua5.2" or (pkgConfDepError "lua5.2")) ]
              else [ (pkgconfPkgs."lua5.3" or (pkgConfDepError "lua5.3")) ]));
        };
      tests = {
        "test-hslua" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hslua" or (buildDepError "hslua"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }