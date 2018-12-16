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
      specVersion = "1.8";
      identifier = {
        name = "unexceptionalio";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2013-2014 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/unexceptionalio";
      url = "";
      synopsis = "IO without any non-error, synchronous exceptions";
      description = "When you've caught all the exceptions that can be handled safely,\nthis is what you're left with.\n\nIt is intended that you use qualified imports with this library.\n\n> import UnexceptionalIO (UIO)\n> import qualified UnexceptionalIO as UIO";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }