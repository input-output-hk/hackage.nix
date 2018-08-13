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
      specVersion = "1.6";
      identifier = {
        name = "ginsu";
        version = "0.8.0.2";
      };
      license = "MIT";
      copyright = "2002-2009 John Meacham <john@repetae.net>\n2011 Dylan Simon <dylan@dylex.net>";
      maintainer = "dylan@dylex.net";
      author = "John Meacham <john@foo.net>\nDylan Simon <dylan@dylex.net>";
      homepage = "http://repetae.net/computer/ginsu/";
      url = "";
      synopsis = "Ginsu Gale Client";
      description = "Ginsu is a client for the gale chat system. It is designed to be powerful and above all stable, as well as having a quick learning curve.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ginsu" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.unix)
            (hsPkgs.regex-posix)
            (hsPkgs.utf8-string)
            (hsPkgs.binary)
            (hsPkgs.old-time)
            (hsPkgs.syb)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.process)
          ];
          libs = [
            (pkgs."ssl")
            (pkgs."crypto")
          ];
        };
      };
    };
  }