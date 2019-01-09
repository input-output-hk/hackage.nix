{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; old-mtl = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cgi"; version = "3001.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, John Chee, Andy Gill, Anders Kaseorg,\nIan Lynagh, Erik Meijer, Sven Panne, Jeremy Shaw";
      maintainer = "John Chee <cheecheeo@gmail.com>";
      author = "Bjorn Bringert";
      homepage = "https://github.com/cheecheeo/haskell-cgi";
      url = "";
      synopsis = "A library for writing CGI programs";
      description = "This is a Haskell library for writing CGI programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.parsec)
          (hsPkgs.exceptions)
          (hsPkgs.xhtml)
          (hsPkgs.bytestring)
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.multipart)
          ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) (hsPkgs.network) ]
          else [ (hsPkgs.network) ])) ++ (if flags.old-mtl
          then [ (hsPkgs.mtl) (hsPkgs.mtl-compat) ]
          else [ (hsPkgs.mtl) ]);
        };
      tests = {
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }