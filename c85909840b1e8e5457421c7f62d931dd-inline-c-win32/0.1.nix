{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "inline-c-win32";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Anton Dessiatov,";
        maintainer = "anton.dessiatov@gmail.com";
        author = "Anton Dessiatov";
        homepage = "https://github.com/anton-dessiatov/inline-c-win32";
        url = "";
        synopsis = "Win32 API Context for the inline-c library";
        description = "This is a little helper for the marvelous inline-c library. It provides a context with Win32 API\ndata types so you can use DWORD, BOOL, UINT and other Win32 data types right in your inlined\nfunction types.";
        buildType = "Simple";
      };
      components = {
        inline-c-win32 = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.inline-c
            hsPkgs.template-haskell
            hsPkgs.Win32
          ];
        };
      };
    }