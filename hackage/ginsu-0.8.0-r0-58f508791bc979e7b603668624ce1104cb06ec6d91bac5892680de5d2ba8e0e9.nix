{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ginsu";
        version = "0.8.0";
      };
      license = "MIT";
      copyright = "2002-2009 John Meacham <john@repetae.net>\n2011 Dylan Simon <dylan@dylex.net>";
      maintainer = "dylan@dylex.net";
      author = "John Meacham <john@foo.net>\nDylan Simon <dylan@dylex.net>";
      homepage = "http://repetae.net/computer/ginsu/";
      url = "";
      synopsis = "Ginsu Gale Client";
      description = "Ginsu is a client for the gale chat system. It is designed to be powerful and above all stable, as well as having a quick learning curve.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ginsu" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.containers)
            (hsPkgs.haskell98)
            (hsPkgs.pretty)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.unix)
            (hsPkgs.regex-posix)
            (hsPkgs.utf8-string)
            (hsPkgs.ghc-binary)
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