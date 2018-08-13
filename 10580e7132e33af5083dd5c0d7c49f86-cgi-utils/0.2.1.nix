{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "cgi-utils";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "none";
      author = "Chris Done (chrisdone@gmail.com)";
      homepage = "http://github.com/chrisdone/haskell-cgi-utils";
      url = "";
      synopsis = "Simple modular utilities for CGI/FastCGI (sessions, etc.)";
      description = "Simple modular utilities for CGI/FastCGI that one tends to always need including sessions state.";
      buildType = "Simple";
    };
    components = {
      "cgi-utils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }