{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "Win32-security";
          version = "0.1";
        };
        license = "MIT";
        copyright = "Anton Dessiatov, 2015";
        maintainer = "anton.dessiatov@gmail.com";
        author = "Anton Dessiatov";
        homepage = "https://github.com/anton-dessiatov/Win32-security";
        url = "";
        synopsis = "Haskell bindings to a security-related functions of the Windows API";
        description = "This package contains bindings for security-related functions of the Windows API.\nIts main features are account name/SID lookup and editing securable objects access control lists.";
        buildType = "Simple";
      };
      components = {
        "Win32-security" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.Win32
            hsPkgs.Win32-errors
          ];
        };
        exes = {
          "win32-security-sid-lookup" = {
            depends  = pkgs.lib.optionals _flags.build-tests [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.Win32-security
            ];
          };
          "win32-security-file-security" = {
            depends  = pkgs.lib.optionals _flags.build-tests [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.Win32-security
            ];
          };
          "win32-security-get-process-sid" = {
            depends  = pkgs.lib.optionals _flags.build-tests [
              hsPkgs.base
              hsPkgs.Win32-security
            ];
          };
        };
      };
    }