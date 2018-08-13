{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      system-lua = false;
      apicheck = false;
      luajit = false;
      lua501 = false;
      lua502 = false;
      use-pkgconfig = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hslua";
        version = "0.6.0";
      };
      license = "MIT";
      copyright = "© 2007–2012 Gracjan Polak\n© 2012–2016 Ömer Sinan Ağacan\n© 2016–2017 Albert Krewinkel";
      maintainer = "albert+hslua@zeitkraut.de";
      author = "Gracjan Polak, Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "A Lua language interpreter embedding in Haskell";
      description = "The Foreign.Lua module is a wrapper of Lua language\ninterpreter as described on\n<https://www.lua.org/ lua.org>.\n\nThis package contains a full Lua interpreter version\n5.3.4. If you want to link it with a system-wide Lua\ninstallation, use the @system-lua@ flag.\n\n<https://github.com/tarleb/hslua-examples Example programs>\nare available in a separate repository.";
      buildType = "Simple";
    };
    components = {
      "hslua" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.fail)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
        libs = pkgs.lib.optionals (_flags.system-lua || _flags.luajit || _flags.lua501 || _flags.lua502) (if _flags.luajit
          then pkgs.lib.optional (!_flags.use-pkgconfig) (pkgs."luajit-5.1")
          else pkgs.lib.optional (!_flags.use-pkgconfig) (pkgs."lua"));
        pkgconfig = pkgs.lib.optionals (_flags.system-lua || _flags.luajit || _flags.lua501 || _flags.lua502) (if _flags.luajit
          then pkgs.lib.optional (_flags.use-pkgconfig) (pkgconfPkgs.luajit)
          else pkgs.lib.optionals (_flags.use-pkgconfig) (if _flags.lua501
            then [ (pkgconfPkgs.lua5.1) ]
            else if _flags.lua502
              then [ (pkgconfPkgs.lua5.2) ]
              else [ (pkgconfPkgs.lua5.3) ]));
      };
      tests = {
        "test-hslua" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hslua)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }