{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "scgi";
        version = "0.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "nubgames@gmail.com";
      author = "Eric Sessoms <nubgames@gmail.com>, Stephen Blackheath <http://blacksapphire.com/antispam/>";
      homepage = "http://github.com/esessoms/scgi";
      url = "";
      synopsis = "A Haskell library for writing SCGI programs.";
      description = "This library lets you write SCGI programs. This package reuses the\ncgi package API, making it very easy to port CGI programs to SCGI.";
      buildType = "Simple";
    };
    components = {
      "scgi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cgi)
          (hsPkgs.network)
        ];
      };
    };
  }