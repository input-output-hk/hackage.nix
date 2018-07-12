{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "Win32-services";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2013 Michael Steele";
        maintainer = "Michael Steele <mikesteele81@gmail.com>";
        author = "Michael Steele";
        homepage = "http://github.com/mikesteele81/win32-services";
        url = "";
        synopsis = "Windows service applications";
        description = "This package provides a partial binding to the Win32 System Services\nAPI. It's now possible to write Windows service applications using\nHaskell.\n\nThe binding is partial. Here are a few ways in which it differs from the\nofficial API:\n\n* Only services running within their own process are supported. These are\nprocesses of the 'WIN32_OWN_PROCESS' type.\n\n* In cases where multiple versions of the same function exist (for\ncompatibility), this binding only offers one of them.\n\n* None of the extended control codes are supported. Handlers you write will\nautomatically report this to the operating system when such controls are\nreceived.\n\n* Only facilities for writing services are supported; not controlling them.\n\nEffort has been made to simplify using the API without hiding what is\nhappening behind the scenes. Users are encouraged to read Microsoft's\ndocumentation under 'Dev Center - Desktop > Docs > Desktop app development\ndocumentation > System Services > Services'. The official example has been\nported to Haskell. This can be found in the 'examples' directory of the\nsource tree.\n\n/Simple Example and Usage/\n\n@\nmodule Main where\n\nimport Control.Concurrent.MVar\nimport System.Win32.SystemServices.Services\n\nmain = startServiceCtrlDispatcher \\\"Test\\\" \$ \\name _ -> do\n&#x20;   mStop <- newEmptyMVar\n&#x20;   hStatus <- registerServiceCtrlHandlerEx name \$ handler mStop\n&#x20;   setServiceStatus hStatus running\n&#x20;   takeMVar mStop\n&#x20;   setServiceStatus hStatus stopped\n\nhandler mStop hStatus STOP = do\n&#x20;   setServiceStatus hStatus stopPending\n&#x20;   putMVar mStop ()\n&#x20;   return True\nhandler _ _ INTERROGATE = return True\nhandler _ _ _           = return False\n\nstopped = SERVICE_STATUS WIN32_OWN_PROCESS STOPPED [] nO_ERROR 0 0 0\nstopPending = stopped &#x7b; currentState = STOP_PENDING\n&#x20;                     , waitHint = 3000 &#x7d;\nrunning = stopped &#x7b; currentState = RUNNING\n&#x20;                 , controlsAccepted = [ACCEPT_STOP] &#x7d;\n@\n\n@\nC:\\programming\\test\\>ghc --make -threaded Main.hs\n[1 of 1] Compiling Main             ( Main.hs, Main.o )\nLinking Main.exe ...\n\\<linker warnings omitted\\>\nC:\\\\programming\\\\test\\>copy Main.exe c:\\\\svc\\\\Test.exe\n1 file(s) copied.\n@\n\nExecute the following from an elevated command prompt to register the\nservice:\n\n@\nC:\\\\svc\\>sc create Test binPath= c:\\\\svc\\\\Test.exe\n[SC] CreateService SUCCESS\n@\n\nThe service can now be started and stopped from the services console.";
        buildType = "Simple";
      };
      components = {
        "Win32-services" = {
          depends  = [
            hsPkgs.base
            hsPkgs.errors
            hsPkgs.Win32
          ];
          libs = [ pkgs.Advapi32 ];
        };
      };
    }