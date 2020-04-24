{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      system-lua = false;
      apicheck = false;
      lua_32bits = false;
      allow-unsafe-gc = true;
      export-dynamic = true;
      pkg-config = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "hslua"; version = "1.0.2"; };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak\n© 2012–2016 Ömer Sinan Ağacan\n© 2016–2019 Albert Krewinkel";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "https://hslua.github.io/";
      url = "";
      synopsis = "Bindings to Lua, an embeddable scripting language";
      description = "HsLua provides bindings, wrappers, types, and helper\nfunctions to bridge Haskell and <https://www.lua.org/ Lua>.\n\nThis package contains a full Lua interpreter version 5.3.5.\nIf you want to link it with a system-wide Lua installation,\nuse the @system-lua@ flag.\n\n<https://github.com/hslua/hslua-examples Example programs>\nare available in a separate repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        libs = (pkgs.lib).optionals (flags.system-lua || flags.pkg-config) ((pkgs.lib).optional (!flags.pkg-config) (pkgs."lua" or ((hsPkgs.pkgs-errors).sysDepError "lua")));
        pkgconfig = (pkgs.lib).optionals (flags.system-lua || flags.pkg-config) ((pkgs.lib).optional (flags.pkg-config) (pkgconfPkgs."lua5.3" or ((hsPkgs.pkgs-errors).pkgConfDepError "lua5.3")));
        buildable = true;
        };
      tests = {
        "test-hslua" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark-hslua" = {
          depends = [
            (hsPkgs."hslua" or ((hsPkgs.pkgs-errors).buildDepError "hslua"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }