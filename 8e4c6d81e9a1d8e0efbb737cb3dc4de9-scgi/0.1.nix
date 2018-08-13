{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "scgi";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "esessoms@mac.com";
      author = "Eric Sessoms";
      homepage = "";
      url = "";
      synopsis = "A Haskell library for writing SCGI programs.";
      description = "This library lets you write SCGI programs. This package reuses the\ncgi package API, making it very easy to port CGI programs to SCGI.";
      buildType = "Custom";
    };
    components = {
      "scgi" = {
        depends  = [
          (hsPkgs.cgi)
        ] ++ (if _flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }