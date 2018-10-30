{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
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
      identifier = {
        name = "hslua";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak\n© 2012–2016 Ömer Sinan Ağacan\n© 2016–2018 Albert Krewinkel";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.fail)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
        libs = pkgs.lib.optionals (flags.system-lua || flags.pkg-config) (pkgs.lib.optional (!flags.pkg-config) (pkgs."lua"));
        pkgconfig = pkgs.lib.optionals (flags.system-lua || flags.pkg-config) (pkgs.lib.optional (flags.pkg-config) (pkgconfPkgs.lua5.3));
      };
      tests = {
        "test-hslua" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.fail)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.hslua)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "benchmark-hslua" = {
          depends  = [
            (hsPkgs.hslua)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }