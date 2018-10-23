{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "fastcgi";
        version = "3001.0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Lemmih";
      maintainer = "bjorn@bringert.net";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell library for writing FastCGI programs";
      description = "This library lets you write FastCGI programs. This package reuses the\ncgi package API, making it very easy to port CGI programs to FastCGI.\nThe FastCGI C development kit is required to build this library.";
      buildType = "Configure";
    };
    components = {
      "fastcgi" = {
        depends  = [
          (hsPkgs.cgi)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ]);
        libs = [ (pkgs."fcgi") ];
      };
    };
  }