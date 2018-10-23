{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HTTP";
        version = "4000.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2002, Warrick Gray\nCopyright (c) 2002-2005, Ian Lynagh\nCopyright (c) 2003-2006, Bjorn Bringert\nCopyright (c) 2004, Andre Furtado\nCopyright (c) 2004, Ganesh Sittampalam\nCopyright (c) 2004-2005, Dominic Steinitz\nCopyright 2007 Robin Bate Boerop\nCopyright 2008- Sigbjorn Finne";
      maintainer = "Ganesh Sittampalam <ganesh@earth.li>";
      author = "Warrick Gray <warrick.gray@hotmail.com>";
      homepage = "http://projects.haskell.org/http/";
      url = "";
      synopsis = "A library for client-side HTTP";
      description = "The HTTP package supports client-side web programming in Haskell. It lets you set up\nHTTP connections, transmitting requests and processing the responses coming back, all\nfrom within the comforts of Haskell. It's dependent on the network package to operate,\nbut other than that, the implementation is all written in Haskell.\n\nA basic API for issuing single HTTP requests + receiving responses is provided. On top\nof that, a session-level abstraction is also on offer  (the @BrowserAction@ monad);\nit taking care of handling the management of persistent connections, proxies,\nstate (cookies) and authentication credentials required to handle multi-step\ninteractions with a web server.\n\nThe representation of the bytes flowing across is extensible via the use of a type class,\nletting you pick the representation of requests and responses that best fits your use.\nSome pre-packaged, common instances are provided for you (@ByteString@, @String@.)\n\nHere's an example use:\n\n>\n>    do\n>      rsp <- Network.HTTP.simpleHTTP (getRequest \"http://www.haskell.org/\")\n>              -- fetch document and return it (as a 'String'.)\n>      fmap (take 100) (getResponseBody rsp)\n>\n>    do\n>      rsp <- Network.Browser.browse \$ do\n>               setAllowRedirects True -- handle HTTP redirects\n>               request \$ getRequest \"http://google.com/\"\n>      fmap (take 100) (getResponseBody rsp)\n>\n\nGit repository available at <git://github.com/haskell/HTTP.git>";
      buildType = "Simple";
    };
    components = {
      "HTTP" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
        ] ++ (if flags.old-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.old-time)
            (hsPkgs.bytestring)
          ])) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
      };
    };
  }