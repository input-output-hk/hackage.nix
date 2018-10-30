{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HTTP";
        version = "4000.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2002, Warrick Gray\nCopyright (c) 2002-2005, Ian Lynagh\nCopyright (c) 2003-2006, Bjorn Bringert\nCopyright (c) 2004, Andre Furtado\nCopyright (c) 2004, Ganesh Sittampalam\nCopyright (c) 2004-2005, Dominic Steinitz\nCopyright 2007 Robin Bate Boerop";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Warrick Gray <warrick.gray@hotmail.com>";
      homepage = "http://www.haskell.org/http/";
      url = "";
      synopsis = "";
      description = "A library for client-side HTTP, version 2. Rewrite of existing HTTP\npackage to allow overloaded representation of HTTP request bodies\nand responses. Provides three such instances: lazy and strict 'ByteString',\nalong with the good old @String@.\nInspired in part by Jonas Aadahl et al's work on ByteString'ifying HTTP\na couple of years ago.\nGit repository available at <http://code.galois.com/HTTPbis.git>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
        ] ++ (if flags.old-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.array)
          ]);
      };
    };
  }