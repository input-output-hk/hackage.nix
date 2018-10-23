{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "nme";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2012 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/NME-Haskell";
      url = "";
      synopsis = "Bindings to the Nyctergatis Markup Engine";
      description = "This library implements a simple, pure binding onto NME, an\nimplementation of WikiCreole.  It has support for output to many\nformats including HTML and LaTeX.";
      buildType = "Simple";
    };
    components = {
      "nme" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }