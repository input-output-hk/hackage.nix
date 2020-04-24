{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "Win32-services"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011-2018 Michael Steele";
      maintainer = "Michael Steele <mikesteele81@gmail.com>";
      author = "Michael Steele";
      homepage = "http://github.com/mikesteele81/win32-services";
      url = "";
      synopsis = "Windows service applications";
      description = "This package provides a partial binding to the Win32 System Services\nAPI. It makes it easy to write Windows service applications using\nHaskell. This version supports both 32-bit and 64-bit versions of GHC.\n\nThe binding is partial. Here are a few ways in which it differs from the\nofficial API:\n\n* Only services running within their own process are supported. These are\nprocesses of the \"WIN32_OWN_PROCESS\" type.\n\n* In cases where multiple versions of the same function exist (for\ncompatibility), this binding only offers one of them.\n\n* None of the extended control codes are supported. Handlers you write will\nautomatically report this to the operating system when such controls are\nreceived.\n\n* Only facilities for writing services are supported; not controlling them.\n\nEffort has been made to simplify using the API without hiding what is\nhappening behind the scenes. Users are encouraged to read Microsoft's\ndocumentation under 'Dev Center - Desktop > Docs > Desktop app development\ndocumentation > System Services > Services'. The official example has been\nported to Haskell. This can be found in the 'examples' directory of the\nsource tree.\n\n/Simple Example and Usage/\n\n@\nmodule Main where\n\nimport Control.Concurrent.MVar\nimport System.Win32.Services\n\nmain = do\n&#x20;   mStop <- newEmptyMVar\n&#x20;   startServiceCtrlDispatcher \\\"Test\\\" 3000 (handler mStop) \$ \\\\_ _ h -> do\n&#x20;       setServiceStatus h running\n&#x20;       takeMVar mStop\n&#x20;       setServiceStatus h stopped\n\nhandler mStop hStatus Stop = do\n&#x20;   setServiceStatus hStatus stopPending\n&#x20;   putMVar mStop ()\n&#x20;   return True\nhandler _ _ Interrogate = return True\nhandler _ _ _           = return False\n\nrunning = ServiceStatus Win32OwnProcess Running [AcceptStop] nO_ERROR 0 0 0\nstopped = ServiceStatus Win32OwnProcess Stopped [] nO_ERROR 0 0 0\nstopPending = ServiceStatus Win32OwnProcess StopPending [AcceptStop] nO_ERROR 0 0 0\n@\n\n@\nC:\\programming\\test\\>ghc --make -threaded Main.hs\n[1 of 1] Compiling Main             ( Main.hs, Main.o )\nLinking Main.exe ...\n\\<linker warnings omitted\\>\nC:\\\\programming\\\\test\\>copy Main.exe c:\\\\svc\\\\Test.exe\n1 file(s) copied.\n@\n\nExecute the following from an elevated command prompt to register the\nservice:\n\n@\nC:\\\\svc\\>sc create Test binPath= c:\\\\svc\\\\Test.exe\n[SC] CreateService SUCCESS\n@\n\nThe service can now be started and stopped from the services console.\n\nInstallation Notes:\n\nDepending on which version of GHC you are using you may also need to add\na extra-lib-dirs directive. In GHC version 8.4.3 it works out of the box with\nthe libadvapi32.a file in ...\\\\mingw\\\\x86_64-w64-mingw32\\\\lib.\nFor older version you need to use a version from a Windows SDK. Your\n.cabal file will then need to be modified before installing. A simple `cabal\ninstall Win32-services` may not work. For example, If you are building on\nWindows 8 64-bit with the Windows 8 SDK the 'extra-lib-dirs' field will need\nto be changed to read as follows:\n\n@\nExtra-Lib-Dirs: \\\"C:\\\\\\\\Program Files (x86)\\\\\\\\Windows Kits\\\\\\\\8.0\\\\\\\\Lib\\\\\\\\win8\\\\\\\\um\\\\\\\\x86\\\"\n@\n\nIf building with stack an option is to set it in stack.yaml.\nFor example with the Windows 10 SDK installed with Build Tools for Visual Studio 2017:\n\n@\nextra-lib-dirs:\n- C:\\\\Program Files (x86)\\\\Windows Kits\\\\10\\\\Lib\\\\10.0.15063.0\\\\um\\\\x64\n@\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          (hsPkgs."Win32-errors" or ((hsPkgs.pkgs-errors).buildDepError "Win32-errors"))
          ];
        libs = [
          (pkgs."Advapi32" or ((hsPkgs.pkgs-errors).sysDepError "Advapi32"))
          ];
        buildable = true;
        };
      };
    }