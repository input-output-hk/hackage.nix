{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { our_server = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "free-theorems-webui"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "bartsch@cs.uni-bonn.de";
      author = "";
      homepage = "";
      url = "";
      synopsis = "CGI-based web interface for the free-theorems package.";
      description = "This package provides access to the functionality of <http://hackage.haskell.org/package/free-theorems>\nthrough a web interface.\n\nAn online version can be seen at <http://www-ps.iai.uni-bonn.de/ft/>,\nwhere you can also find a more detailed description of the functionality.\n\nThere is also a shell based interface: <http://hackage.haskell.org/package/ftshell>.\n\nThe CGI binary is called \"free-theorems-webui.cgi\".\n\nTo start it locally for offline usage, just call \"free-theorems-webui\" after installation. (This needs python)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "free-theorems-webui.cgi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.free-theorems)
            (hsPkgs.csv)
            (hsPkgs.cgi)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.xhtml)
            (hsPkgs.base64-string)
            (hsPkgs.haskell98)
            ];
          };
        "free-theorems-webui" = {};
        };
      };
    }